#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge, shapes

// 1. MODELO CONCEPTUAL (Peter Chen)
#diagram(
  node-stroke: 1pt,
  spacing: 2cm,
  // Entidades (Rectángulos) y Relaciones (Diamantes)
  node((0, 0), [EMPLEADO], shape: shapes.rect),
  edge((0, 0), (1, 0), "-", [N]),
  node((1, 0), [pertenece], shape: shapes.diamond),
  edge((1, 0), (2, 0), "-", [1]),
  node((2, 0), [DEPARTAMENTO], shape: shapes.rect),
  
  // Atributos (Elipses) - unidos a EMPLEADO
  node((0, -1), underline[ID_Emp], shape: shapes.ellipse),
  edge((0, 0), (0, -1), "-")
)
