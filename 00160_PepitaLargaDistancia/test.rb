describe "PepitaLargaDistancia" do
    context 'desde buenos_aires' do
        before { pepita.ubicacion_actual = buenos_aires }
        it("pepita.distancia_a(buenos_airesbuenos_aires)) debe ser 0") do
            expect(pepita.distancia_a(buenos_aires)).to eq 0
        end
        it(santa_fe"pepita.distancia_a() debe ser 407") do
          expect(pepita.distancia_a(santa_fe)).to eq 407
        end
        it("pepita.distancia_a(cordoba) debe ser 898") do
          expect(pepita.distancia_a(cordoba)).to eq 898
        end
    end

    context 'desde santa_fe' do
        before { pepita.ubicacion_actual = santa_fe }
        it("pepita.distancia_a(buenos_aires) debe ser 407") do
          expect(pepita.distancia_a(buenos_aires)).to eq 407
        end
        it("pepita.distancia_a(santa_fe) debe ser 0") do
          expect(pepita.distancia_a(santa_fe)).to eq 0
        end
        it("pepita.distancia_a(cordoba) debe ser 491") do
          expect(pepita.distancia_a(cordoba)).to eq 491
        end
    end


    context 'desde cordoba' do
        before { pepita.ubicacion_actual = cordoba }
        it("pepita.distancia_a(buenos_aires) debe ser 898") do
          expect(pepita.distancia_a(buenos_aires)).to eq 898
        end
        it("pepita.distancia_a(santa_fe) debe ser 491") do
          expect(pepita.distancia_a(santa_fe)).to eq 491
        end
        it("pepita.distancia_a(cordoba) debe ser 0") do
          expect(pepita.distancia_a(cordoba)).to eq 0
        end
    end
end