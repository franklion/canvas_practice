$ ->


  ### footer display time ###
  $footer = $ '.footer'

  setInterval () ->
    nowDate = new Date()
    $footer
      .text nowDate
  , 1000

  ###  draw triangle ###
  $myTree = $ '#my-tree'
  ctxTree = $myTree[0].getContext '2d'
  ctxTree.beginPath()
  ctxTree.moveTo 150, 0
  ctxTree.lineTo 0, 300
  ctxTree.lineTo 300, 300
  ctxTree.closePath()
  ctxTree.fillStyle = 'green'
  ctxTree.fill()

  ctxTree.beginPath()
  ctxTree.moveTo(95,300)
  ctxTree.lineTo(95,400)
  ctxTree.lineTo(205,400)
  ctxTree.lineTo(205,300)

  ctxTree.closePath()
  ctxTree.fillStyle = '#634141'
  ctxTree.fill()

  ###  draw triangle ###
  $mySquare = $ '#my-square'
  ctxSquare = $mySquare[0].getContext '2d'
  ctxSquare.beginPath()
  ctxSquare.moveTo 0, 0
  ctxSquare.lineTo 300, 0
  ctxSquare.lineTo 300, 300
  ctxSquare.lineTo 0, 300
  ctxSquare.closePath()
  ctxSquare.fillStyle = '#cdffb0'
  ctxSquare.fill()


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


  ###  click function ###
  ###  show graphs    ###
  $ '.aside ul li'
    .click ->
      N = $(this).index()
      $ '.section .article'
        .find 'canvas'
          .css 'display', 'none'
            .eq(N)
              .css 'display', 'inline-block'
