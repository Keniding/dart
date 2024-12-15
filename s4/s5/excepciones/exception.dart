void main() {
  late int? numero1 = 10;
  late int? numero2 = 0;

  try {
    final valor = numero1/numero2;
    if(valor == double.infinity) {
      throw new Exception("División entre zero"); //Excepción de forma manual que va ir al catch
    }
  } catch (e) {
    print('Error: ${e.toString()}'); 
  } finally {
    print('Finalmente'); 
  }
}