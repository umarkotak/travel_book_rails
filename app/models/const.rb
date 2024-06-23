class Const < ActiveRecord::Base
  STATUS_TO_HUMAN_STATUS = {
    "initialized" => "menunggu konfirmasi",
    "rejected" => "pemesanan ditolak",
    "accepted" => "menunggu pembayaran",
    "expired" => "kadaluarsa",
    "cancelled" => "dibatalkan",
    "payment_completed" => "pembayaran diterima",
    "completed" => "selesai",
  }
end
