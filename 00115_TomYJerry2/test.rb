describe "" do
    describe "#velocidad" do
        it "es 5 si tiene energia 0" do
           tom.energia = 0
           expect(tom.velocidad).to eq 5
        end
        it "es 6 si tiene energia 10" do
           tom.energia = 10
           expect(tom.velocidad).to eq 6
        end
        it "es 15 si tiene energia 100" do
           tom.energia = 100
           expect(tom.velocidad).to eq 15
        end
    end

    describe "#conviene_comer_a?" do
       it "no le conviene si la distancia no es suficientemente corta" do
           expect(tom.conviene_comer_a?(jerry, 10)).to be false
       end
       it "le conviene si la distancia es suficientemente corta" do
           expect(tom.conviene_comer_a?(jerry,  8)).to be true
       end
    end
end