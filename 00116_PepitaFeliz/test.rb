describe "" do
   describe "#cumplir_deseo!" do
      before do
          pepita.recorrido = 0
          pepita.comido = 0
      end

      context "si está euforica vuela 5 kms" do
         before do
              pepita.estado_animo = euforica
              pepita.cumplir_deseo!
          end
          it "no come nada" do
              expect(pepita.comido).to eq 0
          end
          it "vuela 5km"  do
              expect(pepita.recorrido).to eq 5
          end
      end

      context "si está normal no hace nada" do
         before do
              pepita.estado_animo = normal
              pepita.cumplir_deseo!
          end
          it "no come nada" do
              expect(pepita.comido).to eq 0
          end
          it "no recorre nada"  do
              expect(pepita.recorrido).to eq 0
          end
      end

      context "si está cansada" do
          before do
              pepita.estado_animo = cansada
              pepita.cumplir_deseo!
          end
          it "come 500g" do
              expect(pepita.comido).to eq 500
          end
          it "no recorre nada"  do
              expect(pepita.recorrido).to eq 0
          end
      end

   end
end