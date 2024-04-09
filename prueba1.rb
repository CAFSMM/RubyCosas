colores = 'verde rojo mora azul'
cosecha = false

print 'ingrese peso: ' ; peso = gets.chomp.to_f
print 'ingrese radio: ' ; radio = gets.chomp.to_f
print 'ingrese densidad: ' ; densidad = gets.chomp.to_f
print 'ingrese gusanos: ' ; gusanos = gets.chomp.to_i
print 'ingrese color <',colores,'>> ' ; color = gets.chomp.downcase

if colores.include? color then
	if gusanos.eql? 0 then
		if color.eql? 'verde' && densidad<=15 then cosecha = true end
		if color.eql? 'rojo' && radio<=13 && densidad>=10 then cosecha = true end
		if color.eql? 'mora' && peso<=14 && radio==16 && densidad>=12 then cosecha = true end
	end
	if gusanos > 0
		if color.eql? 'azul' && peso>=13 && (not radio.eql? 10) then cosecha = true end 
	end
else
	p 'color no valido\n'
end

cosecha ? puts('SI') : puts('NO')