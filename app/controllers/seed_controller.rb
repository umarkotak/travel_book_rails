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

    render_response(data: {"seed": "ok"})
  end
end
