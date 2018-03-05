import 'package:flutter/material.dart';

//底部导航
class NavigationIconView {

  final Widget _icon; //图标
  final Color _color; //颜色
  final BottomNavigationBarItem item; //底部导航栏
  final AnimationController controller; //动画控制器
  CurvedAnimation _animation; //曲线动画

  //构造方法
  NavigationIconView({
    Widget icon, //图标
    Widget title, //标题
    Color color, //颜色
    /**
     *  ticker对象，每个动画帧调用一次回调
     */
    TickerProvider tick,
  })
      : _icon=icon,
  //接收图标
        _color=color,
  //接收颜色
        item=new BottomNavigationBarItem( //创建底部导航栏
          icon: icon, //导航栏图标
          title: title, //标题
        ),
        controller=new AnimationController( //动画控制器
          duration: kThemeAnimationDuration, //动画持续时间：
          vsync: tick, //垂直同步
        ) {
    _animation = new CurvedAnimation( //曲线动画
        parent: controller, //使用控制器

        /**
         * 正向曲线 0-1 ，
         * 应用的曲线：快速启动并缓和到最终位置的曲线
         */
        curve: new Interval(0.0, 1.0, curve: Curves.fastOutSlowIn)
    );
  }

  //转换动画
  FadeTransition transition(BottomNavigationBarType type,
      BuildContext context) {
    Color _iconColor;//局部颜色
    if (type == BottomNavigationBarType.shifting) {//点击导航栏变大
      _iconColor = _color;//图标颜色改成局部颜色
    } else {
      /**
       * ThemeData配置主题
       * Theme.of得到当前主题
       */
      ThemeData themeData = Theme.of(context);
      /**
       *
       * 如果程序整体主题的亮度很高（需要深色文本颜色才能实现可读的对比度）
       *  就返回程序主要部分的背景颜色作为图标颜色
       *  否则返回控件的前景颜色作为图标颜色
       */
      _iconColor = themeData.brightness == Brightness.light
          ? themeData.primaryColor : themeData.accentColor;
    }
    return new FadeTransition( //无透明转化
        opacity: _animation,  //不透明动画
      child: new SlideTransition(
        /**
         *
         * 控制子控件位置的动画
         *  开始值和结束值之间的线性插值<以尺寸的分数表示的偏移量>
         *    （1.0，0.0）表示Size的右上角
         *    （0.0，1.0）表示Size的左下角
         */
      position: new Tween<Offset>(
            begin: const Offset(0.0, 0.2),
            end: const Offset(0.0,0.0),
          ).animate(_animation),
        child: new IconTheme(  //子控件的图标颜色大小
            data: new IconThemeData(
              color: _iconColor,
              size: 120.0,
            ),
            child: _icon
        ),
      ),
    );
  }

}




