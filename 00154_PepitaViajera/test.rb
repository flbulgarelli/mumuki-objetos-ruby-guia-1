describe 'si pepita está en el km0 con 100 de energia' do
  before { pepita.energia = 100 }
  before { pepita.ubicacion_actual = km0 }


  describe 'cuando vuela al km30' do
    before { pepita.volar_a! km30 }
    it("energia debe ser 70") do
      expect(pepita.energia).to eq 70
    end
    it("ubicacion_actual debe ser km30") do
      expect(pepita.ubicacion_actual).to eq km30
    end
  end
end