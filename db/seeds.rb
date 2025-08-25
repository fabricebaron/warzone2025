gpu = Component.create!(
  category: "GPU",
  ranking: 1,
  component_name: "NVIDIA RTX 4070",
  avg_fps_1080: 140.5,
  avg_fps_1440: 120.0,
  avg_fps_4k: 75.3,
  avg_fps_1080_1: 110.0,
  avg_fps_1440_1: 95.0,
  avg_fps_4k_1: 60.0,
  asin: "B09XYZ"
)

gpu.offers.create!(vendor: "Amazon", url: "https://amzn.to/xxxx", price: 649.99)
gpu.offers.create!(vendor: "LDLC", url: "https://ldlc.com/xxxx", price: 629.99)
