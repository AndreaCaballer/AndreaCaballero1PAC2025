void main() {
  List<Empleado> empleados = [
    Empleado("Juan", "Desarrollador", 30000),
    Empleado("Idania", "Asistente", 15000),
    Empleado("Andrea", "Practicante", 10000)
  ];

  double salarioTotal = calcularSalarioTotal(empleados);
  double salarioPromedio = calcularSalarioPromedio(empleados);

  print("Salario total de todos los empleados: Lps. ${salarioTotal}");
  print("Salario promedio: Lps. ${salarioPromedio}");
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (var empleado in empleados) {
    total += empleado.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calcularSalarioTotal(empleados) / empleados.length;
  }

  // No recordaba como hacer para que no de muchos digitos después del punto :c 