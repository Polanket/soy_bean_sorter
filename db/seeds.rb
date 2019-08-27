# frozen_string_literal: true

SoyBean.delete_all
puts "Clearing db"

require 'csv'

soybean_file = Rails.root.join('lib/assets/soybean-large.csv')

soybean_arr = CSV.read(soybean_file)

def convert_attr(attr_num, index)
  attribute_file = Rails.root.join('lib/assets/attributes.csv')
  attr_arr = CSV.read(attribute_file)
  attr_arr
  p attr_arr[attr_num][index.to_i]
end

soybean_arr.each do |instance|
  SoyBean.create!(
      classification: instance[0],
      date: convert_attr(0, instance[1]),
      plant_stand: convert_attr(1, instance[2]),
      precip: convert_attr(2, instance[3]),
      temp: convert_attr(3, instance[4]),
      hail: convert_attr(4, instance[5]),
      crop_hist: convert_attr(5, instance[6]),
      area_damaged: convert_attr(6, instance[7]),
      severity: convert_attr(7, instance[8]),
      seed_tmt: convert_attr(8, instance[9]),
      germination: convert_attr(9, instance[10]),
      plant_growth: convert_attr(10, instance[11]),
      leaves: convert_attr(11, instance[12]),
      leafspots_halo: convert_attr(12, instance[13]),
      leafspots_marg: convert_attr(13, instance[14]),
      leafspot_size: convert_attr(14, instance[15]),
      leaf_shread: convert_attr(15, instance[16]),
      leaf_malf: convert_attr(16, instance[17]),
      leaf_mild: convert_attr(17, instance[18]),
      stem: convert_attr(18, instance[19]),
      lodging: convert_attr(19, instance[20]),
      stem_cankers: convert_attr(20, instance[21]),
      canker_lesion: convert_attr(21, instance[22]),
      fruiting_bodies: convert_attr(22, instance[23]),
      external_decay: convert_attr(23, instance[24]),
      mycelium: convert_attr(24, instance[25]),
      int_discolor: convert_attr(25, instance[26]),
      sclerotia: convert_attr(26, instance[27]),
      fruit_pods: convert_attr(27, instance[28]),
      fruit_spots: convert_attr(28, instance[29]),
      seed: convert_attr(29, instance[30]),
      mold_growth: convert_attr(30, instance[31]),
      seed_discolor: convert_attr(31, instance[32]),
      seed_size: convert_attr(32, instance[33]),
      shriveling: convert_attr(33, instance[34]),
      roots: convert_attr(34, instance[35])
      )
end