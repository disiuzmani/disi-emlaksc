Config = {

    Traders = {

        ['Emlak'] = {
            model = 'cs_hunter',
            coords = {
                vector4(-81.74, -806.69, 243.39, 159.42),
            },
            scenario = 'WORLD_HUMAN_COP_IDLES',
            voice = 'G_M_Y_Lost_02_WHITE_FULL_01', -- https://pastebin.com/FTeAj4yZ
            paymentMethod = 'cash',
            sellItems = false,
            buyItems = true,
            license = {false, label = ''}, -- Lisans = {'silah', label = 'tabanca'}
            blip = { 
                Show = false, 
                Name = 'Export Handel',
                Color = 0, 
                Scale = 0.7, 
                Type = 141
            },

            items = {

                buy = {
                    {
                        item = 'blackmoney',
                        price = 1
                    },
                    
                },

                sell = {
                   
                },
        
            }
        }
   }

}
