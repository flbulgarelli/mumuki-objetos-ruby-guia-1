describe 'si pepita tiene 100 de energia, ' do
   before { pepita.energia = 100 }

   it("(pepita.alcanza_energia? 4) debe dar true") do
       expect(pepita.alcanza_energia? 4).to be true
   end
   it("(pepita.alcanza_energia? 99) debe dar true") do
       expect(pepita.alcanza_energia? 99).to be true
   end
   it("(pepita.alcanza_energia? 101) debe dar false") do
       expect(pepita.alcanza_energia? 101).to be false
   end
   it("(pepita.alcanza_energia? 2000) debe dar false") do
       expect(pepita.alcanza_energia? 2000).to be false
   end

   it("(pepita.volar! 2000) debería fallar") do
       expect { pepita.volar! 2000 }.to raise_error
       expect(pepita.energia).to eq 100
   end

   it("(pepita.volar! 2000) debería mentener energia en 100") do
       pepita.volar! 2000 rescue nil
       expect(pepita.energia).to eq 100
   end

   it("si vuela 4, su energia queda en 96") do
       pepita.volar! 4
       expect(pepita.energia).to eq 96
   end
end