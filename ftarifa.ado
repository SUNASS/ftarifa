*! ftarifa v0.1 (4 Sep 2024)
*! 

*Eliminar programa existente
cap prog drop ftarifa	

*Definir un nuevo programa "ftarifa"
program define ftarifa	

	// syntax permite calcular tarifas basadas en una variable de entrada y diferentes niveles de tarifas y quiebres, organizadas en 10 pares
    syntax varname(min=1 max=1), ///
	[TARifa1(numlist min=1 >=1 <=100 asc) QUIebre1(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa2(numlist min=1 >=1 <=100 asc) QUIebre2(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa3(numlist min=1 >=1 <=100 asc) QUIebre3(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa4(numlist min=1 >=1 <=100 asc) QUIebre4(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa5(numlist min=1 >=1 <=100 asc) QUIebre5(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa6(numlist min=1 >=1 <=100 asc) QUIebre6(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa7(numlist min=1 >=1 <=100 asc) QUIebre7(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa8(numlist min=1 >=1 <=100 asc) QUIebre8(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa9(numlist min=1 >=1 <=100 asc) QUIebre9(numlist min=0 >=0 <=1000000 asc)] ///
	[TARifa10(numlist min=1 >=1 <=100 asc) QUIebre10(numlist min=0 >=0 <=1000000 asc)] ///
	CATegoria(string) Generate(name)

	//Almacena las variables en una lista
    local varname `varlist'
	
	//Verifica silenciosamente si la variable existe en el conjunto de datos actual
    qui confirm variable `varname'
	
	//Verifica si la variable categoria existe en el conjunto de datos
    qui confirm variable `categoria'
	
	//Verifica si la variable categoria existe y es de tipo numerico
    qui confirm numeric variable `categoria'

    
	
	*CATEGORIA 1
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
	if "`tarifa1'" != "" {
		local num_terms_tarifa1 : word count `tarifa1'
    }
    if "`quiebre1'" != "" {		
		local num_terms_quiebre1 : word count `quiebre1'
    }	
		
	*CATEGORIA 2
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
	if "`tarifa2'" != "" {
		local num_terms_tarifa2 : word count `tarifa2'
    }
    if "`quiebre2'" != "" {	
		local num_terms_quiebre2 : word count `quiebre2'
    }
	
	*CATEGORIA 3
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa3'" != "" {
        local num_terms_tarifa3 : word count `tarifa3'
    }
    if "`quiebre3'" != "" {
        local num_terms_quiebre3 : word count `quiebre3'
    }

	*CATEGORIA 4
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa4'" != "" {
        local num_terms_tarifa4 : word count `tarifa4'
    }
    if "`quiebre4'" != "" {
        local num_terms_quiebre4 : word count `quiebre4'
    }

	*CATEGORIA 5
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa5'" != "" {
        local num_terms_tarifa5 : word count `tarifa5'
    }
    if "`quiebre5'" != "" {
        local num_terms_quiebre5 : word count `quiebre5'
    }	

	*CATEGORIA 6
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa6'" != "" {
        local num_terms_tarifa6 : word count `tarifa6'
    }
    if "`quiebre6'" != "" {
        local num_terms_quiebre6 : word count `quiebre6'
    }

	*CATEGORIA 7
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa7'" != "" {
        local num_terms_tarifa7 : word count `tarifa7'
    }
    if "`quiebre6'" != "" {
        local num_terms_quiebre7 : word count `quiebre7'
    }

	*CATEGORIA 8
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa8'" != "" {
        local num_terms_tarifa8 : word count `tarifa8'
    }
    if "`quiebre8'" != "" {
        local num_terms_quiebre8 : word count `quiebre8'
    }

	*CATEGORIA 9
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa9'" != "" {
        local num_terms_tarifa9 : word count `tarifa9'
    }
    if "`quiebre9'" != "" {
        local num_terms_quiebre9 : word count `quiebre9'
    }

	*CATEGORIA 10
	//Comprueba si los macros tienen contenido, si es asi, cuenta el numero de valores en cada una y almacena esos numeros en ls macros num_terms_tar/qui
    if "`tarifa10'" != "" {
        local num_terms_tarifa10 : word count `tarifa10'
    }
    if "`quiebre10'" != "" {
        local num_terms_quiebre10 : word count `quiebre10'
    }
		
	//Guardar el estado actual de los datos
    preserve
	
	//Crea variables temporales y asignarler un valor de cero
    tempvar tempstate1 tempstate2 tempstate3 tempstate4 tempstate5 tempstate6 tempstate7 tempstate8 tempstate9 tempstate10
	
    quietly gen `tempstate1' = 0
    quietly gen `tempstate2' = 0
    quietly gen `tempstate3' = 0
    quietly gen `tempstate4' = 0
	quietly gen `tempstate5' = 0
	quietly gen `tempstate6' = 0
	quietly gen `tempstate7' = 0
	quietly gen `tempstate8' = 0
	quietly gen `tempstate9' = 0
	quietly gen `tempstate10' = 0

	
    // Calcular tarifas para categoría 1 (SOCIAL_01) si hay tarifas y quiebres proporcionados
	
	//Verificar si ambas variables no estan vacias 
	if ("`tarifa1'" != "" & "`quiebre1'" != "") {	
		
		//verifica la relación entre el número de tarifas y quiebres
		if (`num_terms_quiebre1' + 1) == `num_terms_tarifa1' {
			
			//Asignación de valores a escalares 
			local i = 1		//Contador para etiquetas tarifa_1, tarifa_2, tarifa_3, ...
			foreach num of numlist `tarifa1' {
				scalar tarifa1_`i' = `num'
				local i = `i' + 1
			}
			
			// Identificando los quiebres
			local i = 1		
			foreach num of numlist `quiebre1' {
				scalar quiebre1_`i' = `num'
				local i = `i' + 1
			}

			//Calculo de tarifas para cada segmento de la variable
			forvalues j = 1/`num_terms_quiebre1' {
				if `j' == 1 {
					quietly replace `tempstate1' = `tempstate1' + tarifa1_`j' * min(`varname', quiebre1_`j') if (`varname' > 0 & `categoria' == 1)
				}
				else {
					local prev_j = `j' - 1
					quietly replace `tempstate1' = `tempstate1' + tarifa1_`j' * (min(`varname', quiebre1_`j') - quiebre1_`prev_j') if (`varname' > quiebre1_`prev_j' & `categoria' == 1)
				}
			}

			quietly replace `tempstate1' = `tempstate1' + tarifa1_`num_terms_tarifa1' * (`varname' - quiebre1_`num_terms_quiebre1') if (`varname' > quiebre1_`num_terms_quiebre1' & `categoria' == 1)
		}
		else {
			di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 1."
		}
	}
		

    // Calcular tarifas para categoría 2 (SOCIAL_02) si hay tarifas y quiebres proporcionados
	if ("`tarifa2'" != "" & "`quiebre2'" != "") {
		if (`num_terms_quiebre2' + 1) == `num_terms_tarifa2' {
			local i = 1
			foreach num of numlist `tarifa2' {
				scalar tarifa2_`i' = `num'
				local i = `i' + 1
			}

			local i = 1
			foreach num of numlist `quiebre2' {
				scalar quiebre2_`i' = `num'
				local i = `i' + 1
			}

			forvalues j = 1/`num_terms_quiebre2' {
				if `j' == 1 {
                quietly replace `tempstate2' = `tempstate2' + tarifa2_`j' * min(`varname', quiebre2_`j') if (`varname' > 0 & `categoria' == 2)
				}
				else {
					local prev_j = `j' - 1
					quietly replace `tempstate2' = `tempstate2' + tarifa2_`j' * (min(`varname', quiebre2_`j') - quiebre2_`prev_j') if (`varname' > quiebre2_`prev_j' & `categoria' == 2)
				}
			}

			quietly replace `tempstate2' = `tempstate2' + tarifa2_`num_terms_tarifa2' * (`varname' - quiebre2_`num_terms_quiebre2') if (`varname' > quiebre2_`num_terms_quiebre2' & `categoria' == 2)
		}
		else {
			di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 2."
		}
	}

    // Calcular tarifas para categoría 3 (DOMESTICO_01), si hay tarifas y quiebres proporcionados
    if ("`tarifa3'" != "" & "`quiebre3'" != "") {
        if (`num_terms_quiebre3' + 1) == `num_terms_tarifa3' {
            local i = 1
            foreach num of numlist `tarifa3' {
                scalar tarifa3_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre3' {
                scalar quiebre3_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre3' {
                if `j' == 1 {
                    quietly replace `tempstate3' = `tempstate3' + tarifa3_`j' * min(`varname', quiebre3_`j') if (`varname' > 0 & `categoria' == 3)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate3' = `tempstate3' + tarifa3_`j' * (min(`varname', quiebre3_`j') - quiebre3_`prev_j') if (`varname' > quiebre3_`prev_j' & `categoria' == 3)
                }
            }

            quietly replace `tempstate3' = `tempstate3' + tarifa3_`num_terms_tarifa3' * (`varname' - quiebre3_`num_terms_quiebre3') if (`varname' > quiebre3_`num_terms_quiebre3' & `categoria' == 3)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 3."
        }
    }

    // Calcular tarifas para categoría 4 (DOMESTICO_02), si hay tarifas y quiebres proporcionados
    if ("`tarifa4'" != "" & "`quiebre4'" != "") {
        if (`num_terms_quiebre4' + 1) == `num_terms_tarifa4' {
            local i = 1
            foreach num of numlist `tarifa4' {
                scalar tarifa4_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre4' {
                scalar quiebre4_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre4' {
                if `j' == 1 {
                    quietly replace `tempstate4' = `tempstate4' + tarifa4_`j' * min(`varname', quiebre4_`j') if (`varname' > 0 & `categoria' == 4)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate4' = `tempstate4' + tarifa4_`j' * (min(`varname', quiebre4_`j') - quiebre4_`prev_j') if (`varname' > quiebre4_`prev_j' & `categoria' == 4)
                }
            }

            quietly replace `tempstate4' = `tempstate4' + tarifa4_`num_terms_tarifa4' * (`varname' - quiebre4_`num_terms_quiebre4') if (`varname' > quiebre4_`num_terms_quiebre4' & `categoria' == 4)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 4."
        }
    }

    // Calcular tarifas para categoría 5 (COMERCIAL_01), si hay tarifas y quiebres proporcionados
    if ("`tarifa5'" != "" & "`quiebre5'" != "") {
        if (`num_terms_quiebre5' + 1) == `num_terms_tarifa5' {
            local i = 1
            foreach num of numlist `tarifa5' {
                scalar tarifa5_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre5' {
                scalar quiebre5_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre5' {
                if `j' == 1 {
                    quietly replace `tempstate5' = `tempstate5' + tarifa5_`j' * min(`varname', quiebre5_`j') if (`varname' > 0 & `categoria' == 5)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate5' = `tempstate5' + tarifa5_`j' * (min(`varname', quiebre5_`j') - quiebre5_`prev_j') if (`varname' > quiebre5_`prev_j' & `categoria' == 5)
                }
            }

            quietly replace `tempstate5' = `tempstate5' + tarifa5_`num_terms_tarifa5' * (`varname' - quiebre5_`num_terms_quiebre5') if (`varname' > quiebre5_`num_terms_quiebre5' & `categoria' == 5)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 5."
        }
    }
	
    // Calcular tarifas para categoría 6 (COMERCIAL_02), si hay tarifas y quiebres proporcionados
    if ("`tarifa6'" != "" & "`quiebre6'" != "") {
        if (`num_terms_quiebre6' + 1) == `num_terms_tarifa6' {
            local i = 1
            foreach num of numlist `tarifa6' {
                scalar tarifa6_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre6' {
                scalar quiebre6_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre6' {
                if `j' == 1 {
                    quietly replace `tempstate6' = `tempstate6' + tarifa6_`j' * min(`varname', quiebre6_`j') if (`varname' > 0 & `categoria' == 6)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate6' = `tempstate6' + tarifa6_`j' * (min(`varname', quiebre6_`j') - quiebre6_`prev_j') if (`varname' > quiebre6_`prev_j' & `categoria' == 6)
                }
            }

            quietly replace `tempstate6' = `tempstate6' + tarifa6_`num_terms_tarifa6' * (`varname' - quiebre6_`num_terms_quiebre6') if (`varname' > quiebre6_`num_terms_quiebre6' & `categoria' == 6)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 6."
        }
    }
		
    // Calcular tarifas para categoría 7 (INDUSTRIAL_01), si hay tarifas y quiebres proporcionados
    if ("`tarifa7'" != "" & "`quiebre7'" != "") {
        if (`num_terms_quiebre7' + 1) == `num_terms_tarifa7' {
            local i = 1
            foreach num of numlist `tarifa7' {
                scalar tarifa7_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre7' {
                scalar quiebre7_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre7' {
                if `j' == 1 {
                    quietly replace `tempstate7' = `tempstate7' + tarifa7_`j' * min(`varname', quiebre7_`j') if (`varname' > 0 & `categoria' == 7)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate7' = `tempstate7' + tarifa7_`j' * (min(`varname', quiebre7_`j') - quiebre7_`prev_j') if (`varname' > quiebre7_`prev_j' & `categoria' == 7)
                }
            }

            quietly replace `tempstate7' = `tempstate7' + tarifa7_`num_terms_tarifa7' * (`varname' - quiebre7_`num_terms_quiebre7') if (`varname' > quiebre7_`num_terms_quiebre7' & `categoria' == 7)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 7."
        }
    }
	
    // Calcular tarifas para categoría 8 (INDUSTRIAL_02), si hay tarifas y quiebres proporcionados
    if ("`tarifa8'" != "" & "`quiebre8'" != "") {
        if (`num_terms_quiebre8' + 1) == `num_terms_tarifa8' {
            local i = 1
            foreach num of numlist `tarifa8' {
                scalar tarifa8_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre8' {
                scalar quiebre8_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre8' {
                if `j' == 1 {
                    quietly replace `tempstate8' = `tempstate8' + tarifa8_`j' * min(`varname', quiebre8_`j') if (`varname' > 0 & `categoria' == 8)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate8' = `tempstate8' + tarifa8_`j' * (min(`varname', quiebre8_`j') - quiebre8_`prev_j') if (`varname' > quiebre8_`prev_j' & `categoria' == 8)
                }
            }

            quietly replace `tempstate8' = `tempstate8' + tarifa8_`num_terms_tarifa8' * (`varname' - quiebre8_`num_terms_quiebre8') if (`varname' > quiebre8_`num_terms_quiebre8' & `categoria' == 8)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 8."
        }
    }
	
    // Calcular tarifas para categoría 9 (ESTATAL_01), si hay tarifas y quiebres proporcionados
    if ("`tarifa9'" != "" & "`quiebre9'" != "") {
        if (`num_terms_quiebre9' + 1) == `num_terms_tarifa9' {
            local i = 1
            foreach num of numlist `tarifa9' {
                scalar tarifa9_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre9' {
                scalar quiebre9_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre9' {
                if `j' == 1 {
                    quietly replace `tempstate9' = `tempstate9' + tarifa9_`j' * min(`varname', quiebre9_`j') if (`varname' > 0 & `categoria' == 9)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate9' = `tempstate9' + tarifa9_`j' * (min(`varname', quiebre9_`j') - quiebre9_`prev_j') if (`varname' > quiebre9_`prev_j' & `categoria' == 9)
                }
            }

            quietly replace `tempstate9' = `tempstate9' + tarifa9_`num_terms_tarifa9' * (`varname' - quiebre9_`num_terms_quiebre9') if (`varname' > quiebre9_`num_terms_quiebre9' & `categoria' == 9)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 9."
        }
    }
	
    // Calcular tarifas para categoría 10 (ESTATAL_02), si hay tarifas y quiebres proporcionados
    if ("`tarifa10'" != "" & "`quiebre10'" != "") {
        if (`num_terms_quiebre10' + 1) == `num_terms_tarifa10' {
            local i = 1
            foreach num of numlist `tarifa10' {
                scalar tarifa10_`i' = `num'
                local i = `i' + 1
            }

            local i = 1
            foreach num of numlist `quiebre10' {
                scalar quiebre10_`i' = `num'
                local i = `i' + 1
            }

            forvalues j = 1/`num_terms_quiebre10' {
                if `j' == 1 {
                    quietly replace `tempstate10' = `tempstate10' + tarifa10_`j' * min(`varname', quiebre10_`j') if (`varname' > 0 & `categoria' == 10)
                }
                else {
                    local prev_j = `j' - 1
                    quietly replace `tempstate10' = `tempstate10' + tarifa10_`j' * (min(`varname', quiebre10_`j') - quiebre10_`prev_j') if (`varname' > quiebre10_`prev_j' & `categoria' == 10)
                }
            }

            quietly replace `tempstate10' = `tempstate10' + tarifa10_`num_terms_tarifa10' * (`varname' - quiebre10_`num_terms_quiebre10') if (`varname' > quiebre10_`num_terms_quiebre10' & `categoria' == 10)
        }
        else {
            di "Error: El número de tarifas (n+1) tiene que ser número de quiebres (n) más una unidad para la categoría 10."
        }
    }
	
    // Combinando resultados
    quietly gen `generate' = .
    quietly replace `generate' = `tempstate1' if `categoria' == 1
    quietly replace `generate' = `tempstate2' if `categoria' == 2
    quietly replace `generate' = `tempstate3' if `categoria' == 3
	quietly replace `generate' = `tempstate4' if `categoria' == 4
	quietly replace `generate' = `tempstate5' if `categoria' == 5
	quietly replace `generate' = `tempstate6' if `categoria' == 6
	quietly replace `generate' = `tempstate7' if `categoria' == 7
	quietly replace `generate' = `tempstate8' if `categoria' == 8
	quietly replace `generate' = `tempstate9' if `categoria' == 9
	quietly replace `generate' = `tempstate10' if `categoria' == 10
	
    tempfile input1
    save `input1', replace
    restore

    clear
    use `input1', clear
end	
	
	

************************
***** END OF FILE ******
************************	