class SeedController < ApiController
  def seed
    unless CampingPacket.find_by(slug: "drajih-glamping-camp").present?
      CampingPacket.create!({
        id: 1,
        started_at: Time.now(),
        ended_at: Time.now() + 365.days,
        slug: "drajih-glamping-camp",
        main_thumbnail: "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/glamp.png",
        thumbnails: [
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/5.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/4.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/1.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/2.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/3.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/banner-04.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/banner-03.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.03.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-16.42.46.jpeg",
        ],
        name: "Drajih Glamping Camp",
        description: "Keunikan Glamping untuk menjadi pengalaman baru liburan kamu, pingin coba type drajih glamping nyaman, aman? D'Rajih Nature Camp jawabannya!",
        specs: [
          {key: "size", value: "4x3 m2"},
          {key: "pax", value: "4 Pax"},
          {key: "toilet", value: "Toilet Bersama"},
          {key: "park", value: "Parkir"},
          {key: "bonfire", value: "Area Api Unggun"},
        ],
        facilitates: [
          "kasur 2", "coffee & tea", "breakfast 4 pax", "folding chair 2", "folding table 1", "cooking set", "kompor portable", "grill pan", "hicook gas 2", "stop kontak ", "teko listrik", "payung 2", "rak sepatu", "gantungan baju", "air mineral galon 1", "extrabed 1"
        ],
        weekday_price: 500000,
        weekend_price: 750000,
        daily_stock: 5,
      })
    end
    unless CampingPacket.find_by(slug: "drajih-dome-tent").present?
      CampingPacket.create!({
        id: 2,
        started_at: Time.now(),
        ended_at: Time.now() + 365.days,
        slug: "drajih-dome-tent",
        main_thumbnail: "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.04-150x150.jpeg",
        thumbnails: [
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/05/dome-150x150.jpg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.23-150x150.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.01-150x150.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.03-150x150.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-16.42.46-1-150x150.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-16.42.46-150x150.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/05/campgrpund-150x150.jpg",
        ],
        name: "Drajih Dome Tent",
        description: "Tenda Dome dapat menjadi pengalaman baru liburan kamu, pingin coba type dome tent dengan nyaman, aman? D’Rajih Nature Camp jawabannya!",
        specs: [
          {key: "size", value: "10 m2"},
          {key: "pax", value: "4 Pax"},
          {key: "toilet", value: "Toilet Bersama"},
          {key: "park", value: "Parkir"},
          {key: "bonfire", value: "Area Api Unggun"},
        ],
        facilitates: [
          "tenda dome 1", "matras spoon 4", "sleeping bag 4", "lampu tenda 1", "bantal tiup 4", "cooking set 1", "kompor portable 1", "tiang flysheet 1", "flysheet (3x4) 1", "grill pan 1", "gas hicook 2", "folding chair 4", "folding table 1", "colokan terminal 1", "kasur untuk 4 org 1", "payung 1",
        ],
        weekday_price: 350000,
        weekend_price: 450000,
        daily_stock: 10,
      })
    end
    unless CampingPacket.find_by(slug: "drajih-camp-ground").present?
      CampingPacket.create!({
        id: 3,
        started_at: Time.now(),
        ended_at: Time.now() + 365.days,
        slug: "drajih-camp-ground",
        main_thumbnail: "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/2-1.png",
        thumbnails: [
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/3-1.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/1-1.png",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-16.42.46.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-16.42.46-1.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/WhatsApp-Image-2024-06-15-at-14.34.03.jpeg",
          "https://d-rajihnaturecamp.com/wp-content/uploads/2024/06/banner-03.jpeg",
        ],
        name: "Drajih Camp Ground",
        description: "Camp Ground untuk kamu yang ingin mencoba di kavling area drajih nature camp, dengan membawa tenda dan peralatan sendiri untuk menambah pengalaman baru nge-camp kamu di D’Rajih Nature Camp.",
        specs: [
          {key: "pax", value: "1 Pax"},
          {key: "toilet", value: "Toilet Bersama"},
          {key: "park", value: "Parkir"},
          {key: "bonfire", value: "Area Api Unggun"},
        ],
        facilitates: [],
        weekday_price: 35000,
        weekend_price: 35000,
        daily_stock: 1000,
      })
    end

    seedCampingItems = [
      {
        id: 1,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fres.cloudinary.com%2Fruparupa-com%2Fimage%2Fupload%2Ff_auto%2Cq_auto%2Fl_ace%3Ac5f05d%3A8cb580%2Ff_auto%2Cq_auto%3Aeco%2Fv1503425246%2FProducts%2F10053425_1.jpg&f=1&nofb=1&ipt=59ffdea7efc36533262f02c67deac0ba200ec28b8331c966778e9a72e2190eda&ipo=images",
        slug: "kursi-lipat",
        name: "kursi lipat",
        price: 30000,
        daily_stock: 10,
      },
      {
        id: 2,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.0dmZlUejaxvIyimMclGGBgHaHa%26pid%3DApi&f=1&ipt=2ce6f06e9844966e18d8de7c04557f56d6b05e7faef0c619a95f2934b28c7525&ipo=images",
        slug: "meja-lipat",
        name: "meja lipat",
        price: 35000,
        daily_stock: 10,
      },
      {
        id: 3,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.ju331gJyJhagyChPi773BQHaHa%26pid%3DApi&f=1&ipt=926929756633b4bcbfff585835492dc9e756c3fd1f9a8df1df7c2ef7597f4e2d&ipo=images",
        slug: "flysheet-3x4",
        name: "flysheet 3x4",
        price: 35000,
        daily_stock: 10,
      },
      {
        id: 4,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.68ds9_t97lTqYGqPRti5AAHaHa%26pid%3DApi&f=1&ipt=42515c235f83b312a214111248022e0e9ab3ffb117efa7745bb35f454c49a6c0&ipo=images",
        slug: "tiang-flysheet",
        name: "tiang flysheet",
        price: 25000,
        daily_stock: 10,
      },
      {
        id: 5,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.mZaa3IwEO02TQAVNZSJqSQHaHa%26pid%3DApi&f=1&ipt=ea95dbf9554635a7da83427e07251db9db8c5ac5fabb1b61755fea94dab7e9a3&ipo=images",
        slug: "sleeping-bag",
        name: "sleeping bag",
        price: 20000,
        daily_stock: 10,
      },
      {
        id: 6,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.RNhZCkZCPA-75zwUuwbkywHaHa%26pid%3DApi&f=1&ipt=3de5dff0a83ae4bae05d7050f78d3eaad2d2e71cd3b71a771b68d996e8bdea8d&ipo=images",
        slug: "matras-spoon",
        name: "matras spoon",
        price: 10000,
        daily_stock: 10,
      },
      {
        id: 7,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.VlVQsJ5ammImdsnmMlEPiAHaHa%26pid%3DApi&f=1&ipt=8e1b01a504c157eccd22f1ad95b4284499b3ce83063e7825f809c5ec428617ac&ipo=images",
        slug: "cooking-set-308",
        name: "cooking set 308",
        price: 25000,
        daily_stock: 10,
      },
      {
        id: 8,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.JKFExINM2CrDz2vlOdyAlwHaHa%26pid%3DApi&f=1&ipt=23b3e9a8dd15cda7ad041afded305c8ed0dfc66158a6b884b2920640d1da7cf3&ipo=images",
        slug: "kompor",
        name: "kompor",
        price: 35000,
        daily_stock: 10,
      },
      {
        id: 9,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.RiBXojyJQZem4OwURHgybgHaHa%26pid%3DApi&f=1&ipt=76795db97a487bbf00926b44c999ab0b6ec9feb3ebfa0cf38af233ee93e42e0e&ipo=images",
        slug: "galon",
        name: "galon",
        price: 30000,
        daily_stock: 10,
      },
      {
        id: 10,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.9uTgq5xuzZ1Tyk-vcwoFBAHaHa%26pid%3DApi&f=1&ipt=657daa985adad5a6fe43e3e68ed004ac413f02aa743c0112e6ebe4b9f7f868ef&ipo=images",
        slug: "colokan-terminal",
        name: "colokan terminal",
        price: 50000,
        daily_stock: 10,
      },
      {
        id: 11,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.QjRlNddJTyw5mIngzTILhQHaHa%26pid%3DApi&f=1&ipt=876a22d68b7d3434ef645ec866412212370c2553f5174ddf8283b77ceec54c52&ipo=images",
        slug: "gas-hicook",
        name: "gas hicook",
        price: 20000,
        daily_stock: 10,
      },
      {
        id: 12,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.SoOa4i57CPtd8aIaPAdx2gHaE8%26pid%3DApi&f=1&ipt=fc43351569591061262030ef874b73a8fbd21f696dda006da5555e4b0b45dd3a&ipo=images",
        slug: "extrabed",
        name: "extrabed",
        price: 50000,
        daily_stock: 10,
      },
      {
        id: 13,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.PORMx0Z9S0V7qOTQofOi3QHaE8%26pid%3DApi&f=1&ipt=f85f0021be06ac28262605dc3ee066fc0317ebe171cfc8c0d6f3176cd2260844&ipo=images",
        slug: "kayu-bakar",
        name: "kayu bakar",
        price: 25000,
        daily_stock: 10,
      },
      {
        id: 14,
        image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.E2xOqIulAbiyA52aXcbGawHaHa%26pid%3DApi&f=1&ipt=36fbf15b752666ac0a52a0c6eaeeb2e5084cda9a120adbd9877595acb9c7ebd2&ipo=images",
        slug: "payung",
        name: "payung",
        price: 15000,
        daily_stock: 10,
      },
    ]
    seedCampingItems.each do |oneCampingItem|
      if CampingItem.find_by(id: oneCampingItem[:id]).present?
        next
      end

      Rails.logger.info(oneCampingItem)
      CampingItem.create!(oneCampingItem)
    end

    unless User.find_by(id: 1).present?
      User.create!({
        id: 1,
        guid: SecureRandom.uuid,
        name: "admin",
        email: "admin@gmail.com",
        phone: "085243214321",
        password: "admin",
        role: "admin",
        verification: "verified",
      })
    end

    render_response(data: {"seed": "ok"})
  end
end
