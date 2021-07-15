
* Mockeando Optionals

Hay veces que neceistamos moquear un método pero este Tiene un tipo Optional, podemos moquearlo de la siguiente forma.

when(claseOptinalMockeada.get(indice)).thenReturn(parametroOptinal);
parametroOptional.isPresent(
    variable -> {
        when(registroDeLaTabla.getRegistroDeLaTablaId()).thenReturn(unValorCualquiera);
    }
);




* Enlaces de interes

- https://www.testingcolombia.com/10-buenas-practicas-para-las-pruebas-unitarias/
