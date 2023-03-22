//! creamos nuestra clase llamada Routes para poder realizar el modelado para
//! la navegación por medio de nombre de rutas.
class Routes {
  //! Creamos constructor privado para que no pueda ser instanciado fuera de la
  //! clase
  Routes._();

  //! definimos como constantes estáticas las rutas de las diferentes páginas
  //! del proyecto
  static const home = '/home';
  static const borde = '/borde-redondeado';
  static const cuadrado = '/cuadrado';
  static const curvo = '/borde-curvo';
  static const diagonal = '/borde-diagonal';
  static const multicurvoA = '/borde-multicurvo-arriba';
  static const multicurvoB = '/borde-multicurvo-abajo';
  static const multicurvo = '/borde-multicurvo';
  static const pico = '/borde-pico';
  static const triangular = '/borde-triangular';
}
