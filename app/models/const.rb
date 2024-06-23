class Const < ActiveRecord::Base
  STATUS_TO_HUMAN_STATUS = {
    "initialized" => "menunggu konfirmasi",
  }
end
