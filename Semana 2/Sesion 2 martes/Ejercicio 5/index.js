function finalGrade(exam, projects) {

    if (exam > 90 || projects > 10) {
        nota = 100;
    } else if (exam > 75 && projects >= 5) {
        nota = 90;
    } else if (exam > 50 && projects >= 2) {
        nota = 75;
    } else {
        nota = 0;
    }

    let respuesta = exam + ", " + projects + " --> " + nota;
    console.log(respuesta);
    return respuesta;
}

finalGrade(100, 12);