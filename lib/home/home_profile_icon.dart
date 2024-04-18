import 'package:flutter/material.dart';

class HomeProfileIcon extends StatefulWidget {
  final Function()? onTap;

  const HomeProfileIcon({required this.onTap});

  @override
  _HomeProfileIconState createState() => _HomeProfileIconState();
}

class _HomeProfileIconState extends State<HomeProfileIcon>
    with SingleTickerProviderStateMixin {
  bool isIconLarge = false;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isAnimating = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200), // Adjust the duration as needed
    );

    _animation = Tween<double>(
      begin: 50.0,
      end: 60.0, // Adjust the size values
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed && isAnimating) {
        _controller.reverse(); // Reverse the animation when it completes
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleAnimation() {
    if (!isAnimating) {
      isAnimating = true;
      _controller.forward();
      setState(() {
        isIconLarge = !isIconLarge;
      });

      _controller.addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          isAnimating = false;
          _controller.removeStatusListener(_handleAnimationStatus);
        }
      });
    }
  }

  void _handleAnimationStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 20,
      child: GestureDetector(
        onTap: toggleAnimation, // Use the toggleAnimation function
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipOval(
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/profile.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
