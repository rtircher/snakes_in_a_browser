define ->

  NUM_HORZ_CELLS = 40
  NUM_VERT_CELLS = 40

  renderPixel = (x,y,color,paper,bounds)->
    x_size = "#{(0.90/bounds[0])*100}%"
    y_size = "#{(0.90/bounds[1])*100}%"

    x_offset = "#{(x/bounds[0])*100}%"
    y_offset = "#{(y/bounds[1])*100}%"

    rect = paper.rect( x_offset, y_offset, x_size, y_size ).attr('fill',color)

  clear = (paper)->
    paper.clear()
    paper.rect( 0, 0, "100%","100%" )

  createBoard = (paper,bounds)->

    paint = (x,y,color)->
      renderPixel(x,y,color,paper,bounds)

    paintSnake = (x,y)-> paint(x,y,'hotpink')
    paintFood = (x,y)-> paint(x,y,'orange')
    
    {
      clear: -> clear(paper)
      paintSnake: paintSnake
      paintFood: paintFood
    }

  createBoard
