$ ->


  ### footer display time ###
  $footer = $ '.footer'

  setInterval () ->
    nowDate = new Date()
    $footer
      .text nowDate
  , 1000

  ###  draw default ###
  $myDefault = $ '#my-default'
  ctxDefault = $myDefault[0].getContext '2d'
  # draw F
  ctxDefault.beginPath()
  ctxDefault.moveTo 120, 200
  ctxDefault.lineTo 40, 200
  ctxDefault.lineTo 40, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 40, 300
  ctxDefault.lineTo 120, 300
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  # draw R
  ctxDefault.beginPath()
  ctxDefault.moveTo 140, 400
  ctxDefault.lineTo 140, 200
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  ctxDefault.beginPath()
  ctxDefault.arc(140, 270, 70, Math.PI * 0.5, Math.PI * 1.5, true)
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  ctxDefault.beginPath()
  ctxDefault.moveTo 180, 325
  ctxDefault.lineTo 220, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  # draw A
  ctxDefault.beginPath()
  ctxDefault.moveTo 240, 400
  ctxDefault.lineTo 300, 200
  ctxDefault.lineTo 360, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 270, 300
  ctxDefault.lineTo 330, 300
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  # draw N
  ctxDefault.beginPath()
  ctxDefault.moveTo 380, 400
  ctxDefault.lineTo 380, 200
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 380, 200
  ctxDefault.lineTo 460, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 460, 400
  ctxDefault.lineTo 460, 200
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()

  # draw K
  ctxDefault.beginPath()
  ctxDefault.moveTo 490, 200
  ctxDefault.lineTo 490, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 580, 200
  ctxDefault.lineTo 490, 330
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()
  ctxDefault.moveTo 530, 270
  ctxDefault.lineTo 590, 400
  ctxDefault.lineWidth = 10
  ctxDefault.strokeStyle = 'white'
  ctxDefault.stroke()



  ###  draw triangle ###
  # 三角形樹葉
  $myTree = $ '#my-tree'
  ctxTree = $myTree[0].getContext '2d'
  ctxTree.beginPath()
  ctxTree.moveTo 150, 0
  ctxTree.lineTo 0, 300
  ctxTree.lineTo 300, 300
  ctxTree.closePath()
  ctxTree.fillStyle = 'green'
  ctxTree.fill()
  # 樹幹
  ctxTree.beginPath()
  ctxTree.moveTo(95,300)
  ctxTree.lineTo(95,400)
  ctxTree.lineTo(205,400)
  ctxTree.lineTo(205,300)

  ctxTree.closePath()
  ctxTree.fillStyle = '#634141'
  ctxTree.fill()

  ###  draw square ###
  # 左邊鏡框
  $mySquare = $ '#my-square'
  ctxSquare = $mySquare[0].getContext '2d'
  ctxSquare.beginPath()
  ctxSquare.moveTo 100, 100
  ctxSquare.lineTo 250, 100
  ctxSquare.lineTo 250, 250
  ctxSquare.lineTo 100, 250
  ctxSquare.closePath()
  ctxSquare.fillStyle = '#b2b2c1'
  ctxSquare.fill()
  ctxSquare.lineWidth = 10
  ctxSquare.strokeStyle = '003300'
  ctxSquare.stroke()

  # 左邊鏡架
  ctxSquare.beginPath()
  ctxSquare.moveTo 180, 100
  ctxSquare.lineTo 215, 25
  ctxSquare.closePath()
  ctxSquare.lineWidth = 10
  ctxSquare.strokeStyle = '003300'
  ctxSquare.stroke()

  # 右邊鏡框
  $mySquare = $ '#my-square'
  ctxSquare = $mySquare[0].getContext '2d'
  ctxSquare.beginPath()
  ctxSquare.moveTo 350, 100
  ctxSquare.lineTo 500, 100
  ctxSquare.lineTo 500, 250
  ctxSquare.lineTo 350, 250
  ctxSquare.closePath()
  ctxSquare.fillStyle = '#b2b2c1'
  ctxSquare.fill()
  ctxSquare.lineWidth = 10
  ctxSquare.strokeStyle = '003300'
  ctxSquare.stroke()

  # 右邊鏡架
  ctxSquare.beginPath()
  ctxSquare.moveTo 500, 175
  ctxSquare.lineTo 560, 50
  ctxSquare.closePath()
  ctxSquare.lineWidth = 10
  ctxSquare.strokeStyle = '003300'
  ctxSquare.stroke()

  # 中間鏡架
  ctxSquare.beginPath()
  ctxSquare.moveTo 250, 175
  ctxSquare.lineTo 350, 175
  ctxSquare.closePath()
  ctxSquare.lineWidth = 10
  ctxSquare.strokeStyle = '003300'
  ctxSquare.stroke()



  ###  draw circle ###
  $myCircle = $ '#my-circle'
  ctxCircle = $myCircle[0].getContext '2d'
  centerX = $myCircle[0].width / 2
  centerY = $myCircle[0].height / 2
  radius = 100

  ctxCircle.beginPath()
  ctxCircle.arc centerX, centerY, radius, 0, 2 * Math.PI, false
  ctxCircle.fillStyle = 'green'
  ctxCircle.fill()
  ctxCircle.lineWidth = 10
  ctxCircle.strokeStyle = '003300'
  ctxCircle.stroke()

  ctxCircle.beginPath()
  ctxCircle.moveTo 140, 100
  ctxCircle.lineTo 140, 50
  ctxCircle.lineTo 160, 50
  ctxCircle.lineTo 165, 100
  ctxCircle.closePath()
  ctxCircle.fillStyle = '#452323'
  ctxCircle.fill()


  ### draw geometry ###
  $myGeometry = $ '#my-geometry'
  ctxGeometry = $myGeometry[0].getContext '2d'
  ctxGeometry.beginPath()
  ctxGeometry.moveTo 300, 0
  ctxGeometry.lineTo 380, 200
  ctxGeometry.lineTo 600, 280
  ctxGeometry.lineTo 400, 360
  ctxGeometry.lineTo 450, 600
  ctxGeometry.lineTo 300, 410
  ctxGeometry.lineTo 150, 600
  ctxGeometry.lineTo 200, 360
  ctxGeometry.lineTo 0  , 280
  ctxGeometry.lineTo 220, 200
  ctxGeometry.closePath()
  ctxGeometry.fillStyle = '#db7093'
  ctxGeometry.fill()


  ###
    click function
    show graphs    ###
  $ '.aside ul li'
    .click ->
      N = $(this).index() + 1
      $ '.section .article'
        .find 'canvas'
          .css 'display', 'none'
            .eq(N)
              .css 'display', 'inline-block'
