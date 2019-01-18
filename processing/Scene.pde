

class Scene
{
  int recentScene;
  Scene()
  {
    recentScene = 0;
  }


  void cleanWorld()
  {  //remove all the blocks (exclude 4 edges)
    int num = world.size()-1;
    for (  int i = num; i > 3; i--)
    {
      world.remove(i);
    }
  }

  void changeScene( int num )
  {  //change your scene by changing the position of your blocks
    if ( num == 0 )
    {
      
    } else if ( num == 1 )
    {
      //world add block of scene No.1 / Map
      world.add(new Block(450, 301, 700, 50));//scene.1 block
    } else if ( num == 2 )
    {
      //world add block of scene No.2
      world.add(new Block(75, 386, 150, 50));//scene.2 block1
      world.add(new Block(265, 487, 134, 36));//scene.2 block2
      world.add(new Block(301, 266, 100, 50));//scene.2 block3
      world.add(new Block(451, 241, 200, 100));//scene.2 block4
      world.add(new Block(676, 266, 250, 50));//scene.2 block5
    } else if ( num == 3 )
    {
      //world add block of scene No.3
      world.add(new Block(132.5, 443, 265, 124));//scene.3 block1
      world.add(new Block(400, 245, 100, 300));//scene.3 block2
      world.add(new Block(666.5, 443, 267, 124));//scene.3 block3
    } else if ( num == 4 )
    {
      //world add block of scene No.4
      world.add(new Block(50, 348, 100, 50));//scene.4 block1
      world.add(new Block(176, 348, 50, 50));//scene.4 block2
      world.add(new Block(301, 348, 100, 50));//scene.4 block3
      world.add(new Block(476, 348, 50, 50));//scene.4 block4
      world.add(new Block(576, 348, 50, 50));//scene.4 block5
      world.add(new Block(676, 348, 50, 50));//scene.4 block6
      world.add(new Block(776, 348, 50, 50));//scene.4 block7
    } else if ( num == 5 )
    {
      world.add(new Block(50, 326, 100, 50));//scene.5 block1
      world.add(new Block(219, 363, 150, 50));//scene.5 block2
      world.add(new Block(390, 290, 50, 50));//scene.5 block3
      world.add(new Block(523, 326, 50, 50));//scene.5 block4
      world.add(new Block(648, 379, 100, 50));//scene.5 block5
      world.add(new Block(776, 301, 50, 50));//scene.5 block6
    } else //if( num == 6 )
    {
    }
  }
  
  void cleanBarrier()
  {  //remove all the barriers 
    int num = barrier.size()-1;
    for (  int i = num; i >= 0; i--)
    {
      barrier.remove(i);
    }
  }
  
  void changebarrier(int i) {
    if ( i == 1) {
      barrier.add(new Barrier(13.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(53.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(93.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(427.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(467.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(226.5, 262.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(427.5, 262.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(467.5, 262.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(606.5, 262.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(646.5, 262.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(116.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(156.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(196.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(236.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(276.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(316.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(356.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(396.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(436.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(476.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(516.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(556.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(596.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(636.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(676.5, 339.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(716.5, 339.5, 27, 27,loadImage("fire.png")));
    } else if ( i == 2 ) {
      barrier.add(new Barrier(13.5, 347.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(413.5, 177.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(583.5, 227.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(145.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(185.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(211.5, 455.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(251.5, 455.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(499.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(539.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(579.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(619.5, 490.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(31.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(71.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(111.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(151.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(191.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(231.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(271.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(311.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(511.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(667.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(707.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(747.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(787.5, 108.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(298.5, 304.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(338.5, 304.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(378.5, 304.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(418.5, 304.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(458.5, 304.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(498.5, 304.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(538.5, 304.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(578.5, 304.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(618.5, 304.5, 27, 27,loadImage("fire.png")));//9
      barrier.add(new Barrier(658.5, 304.5, 27, 27,loadImage("fire.png")));//10
      barrier.add(new Barrier(698.5, 304.5, 27, 27,loadImage("fire.png")));//11
      barrier.add(new Barrier(738.5, 304.5, 27, 27,loadImage("fire.png")));//12
      barrier.add(new Barrier(778.5, 304.5, 27, 27,loadImage("fire.png")));//13
      
      
    }
    else if ( i == 3 ) {
      barrier.add(new Barrier(519.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(278.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(318.5, 491.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(408.5, 408.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(31.5, 108.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(71.5, 108.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(111.5, 108.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(151.5, 108.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(191.5, 108.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(231.5, 108.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(271.5, 108.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(311.5, 108.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(486.5, 108.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(526.5, 108.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(566.5, 108.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(606.5, 108.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(646.5, 108.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(686.5, 108.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(726.5, 108.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(766.5, 108.5, 27, 27,loadImage("fire.png")));//8
    }
    else if ( i == 4 ) {      
      barrier.add(new Barrier(127.5, 249.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(232.5, 392.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(366.5, 286.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(400.5, 392.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(520.5, 286.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(250.5, 176.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(623.5, 386.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(662.5, 189.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(23.5, 108.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(63.5, 108.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(103.5, 108.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(143.5, 108.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(183.5, 108.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(223.5, 108.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(263.5, 108.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(303.5, 108.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(343.5, 108.5, 27, 27,loadImage("fire.png")));//9
      barrier.add(new Barrier(383.5, 108.5, 27, 27,loadImage("fire.png")));//10
      barrier.add(new Barrier(423.5, 108.5, 27, 27,loadImage("fire.png")));//11
      barrier.add(new Barrier(463.5, 108.5, 27, 27,loadImage("fire.png")));//12
      barrier.add(new Barrier(503.5, 108.5, 27, 27,loadImage("fire.png")));//13
      barrier.add(new Barrier(543.5, 108.5, 27, 27,loadImage("fire.png")));//14
      barrier.add(new Barrier(583.5, 108.5, 27, 27,loadImage("fire.png")));//15
      barrier.add(new Barrier(623.5, 108.5, 27, 27,loadImage("fire.png")));//16
      barrier.add(new Barrier(663.5, 108.5, 27, 27,loadImage("fire.png")));//17
      barrier.add(new Barrier(703.5, 108.5, 27, 27,loadImage("fire.png")));//18
      barrier.add(new Barrier(743.5, 108.5, 27, 27,loadImage("fire.png")));//19
      barrier.add(new Barrier(783.5, 108.5, 27, 27,loadImage("fire.png")));//20
      barrier.add(new Barrier(23.5, 491.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(63.5, 491.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(103.5, 491.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(143.5, 491.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(183.5, 491.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(223.5, 491.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(263.5, 491.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(303.5, 491.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(343.5, 491.5, 27, 27,loadImage("fire.png")));//9
      barrier.add(new Barrier(383.5, 491.5, 27, 27,loadImage("fire.png")));//10
      barrier.add(new Barrier(423.5, 491.5, 27, 27,loadImage("fire.png")));//11
      barrier.add(new Barrier(463.5, 491.5, 27, 27,loadImage("fire.png")));//12
      barrier.add(new Barrier(503.5, 491.5, 27, 27,loadImage("fire.png")));//13
      barrier.add(new Barrier(543.5, 491.5, 27, 27,loadImage("fire.png")));//14
      barrier.add(new Barrier(583.5, 491.5, 27, 27,loadImage("fire.png")));//15
      barrier.add(new Barrier(623.5, 491.5, 27, 27,loadImage("fire.png")));//16
      barrier.add(new Barrier(663.5, 491.5, 27, 27,loadImage("fire.png")));//17
      barrier.add(new Barrier(703.5, 491.5, 27, 27,loadImage("fire.png")));//18
      barrier.add(new Barrier(743.5, 491.5, 27, 27,loadImage("fire.png")));//19
      barrier.add(new Barrier(783.5, 491.5, 27, 27,loadImage("fire.png")));//20
    }
    else if ( i == 5 ) {
      barrier.add(new Barrier(212.5, 234.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(333.5, 354.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(450.5, 379.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(523.5, 197.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(684.5, 203.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(343.5, 190.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(90.5, 184.5, 27, 27,loadImage("fire.png")));
      barrier.add(new Barrier(23.5, 108.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(63.5, 108.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(103.5, 108.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(143.5, 108.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(183.5, 108.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(223.5, 108.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(263.5, 108.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(303.5, 108.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(343.5, 108.5, 27, 27,loadImage("fire.png")));//9
      barrier.add(new Barrier(383.5, 108.5, 27, 27,loadImage("fire.png")));//10
      barrier.add(new Barrier(423.5, 108.5, 27, 27,loadImage("fire.png")));//11
      barrier.add(new Barrier(463.5, 108.5, 27, 27,loadImage("fire.png")));//12
      barrier.add(new Barrier(503.5, 108.5, 27, 27,loadImage("fire.png")));//13
      barrier.add(new Barrier(543.5, 108.5, 27, 27,loadImage("fire.png")));//14
      barrier.add(new Barrier(583.5, 108.5, 27, 27,loadImage("fire.png")));//15
      barrier.add(new Barrier(623.5, 108.5, 27, 27,loadImage("fire.png")));//16
      barrier.add(new Barrier(663.5, 108.5, 27, 27,loadImage("fire.png")));//17
      barrier.add(new Barrier(703.5, 108.5, 27, 27,loadImage("fire.png")));//18
      barrier.add(new Barrier(743.5, 108.5, 27, 27,loadImage("fire.png")));//19
      barrier.add(new Barrier(783.5, 108.5, 27, 27,loadImage("fire.png")));//20
      barrier.add(new Barrier(23.5, 491.5, 27, 27,loadImage("fire.png")));//1
      barrier.add(new Barrier(63.5, 491.5, 27, 27,loadImage("fire.png")));//2
      barrier.add(new Barrier(103.5, 491.5, 27, 27,loadImage("fire.png")));//3
      barrier.add(new Barrier(143.5, 491.5, 27, 27,loadImage("fire.png")));//4
      barrier.add(new Barrier(183.5, 491.5, 27, 27,loadImage("fire.png")));//5
      barrier.add(new Barrier(223.5, 491.5, 27, 27,loadImage("fire.png")));//6
      barrier.add(new Barrier(263.5, 491.5, 27, 27,loadImage("fire.png")));//7
      barrier.add(new Barrier(303.5, 491.5, 27, 27,loadImage("fire.png")));//8
      barrier.add(new Barrier(343.5, 491.5, 27, 27,loadImage("fire.png")));//9
      barrier.add(new Barrier(383.5, 491.5, 27, 27,loadImage("fire.png")));//10
      barrier.add(new Barrier(423.5, 491.5, 27, 27,loadImage("fire.png")));//11
      barrier.add(new Barrier(463.5, 491.5, 27, 27,loadImage("fire.png")));//12
      barrier.add(new Barrier(503.5, 491.5, 27, 27,loadImage("fire.png")));//13
      barrier.add(new Barrier(543.5, 491.5, 27, 27,loadImage("fire.png")));//14
      barrier.add(new Barrier(583.5, 491.5, 27, 27,loadImage("fire.png")));//15
      barrier.add(new Barrier(623.5, 491.5, 27, 27,loadImage("fire.png")));//16
      barrier.add(new Barrier(663.5, 491.5, 27, 27,loadImage("fire.png")));//17
      barrier.add(new Barrier(703.5, 491.5, 27, 27,loadImage("fire.png")));//18
      barrier.add(new Barrier(743.5, 491.5, 27, 27,loadImage("fire.png")));//19
      barrier.add(new Barrier(783.5, 491.5, 27, 27,loadImage("fire.png")));//20
    }
  }
  
  
  
}
