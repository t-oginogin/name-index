class NameIndex

  def self.create_index(names)
    patterns = {
      'ア' => 'ア-オ',
      'カ' => 'カ-コガ-ゴ',
      'サ' => 'サ-ソザ-ゾ',
      'タ' => 'タ-トダ-ド',
      'ナ' => 'ナ-ノ',
      'ハ' => 'ハ-ホバ-ボ',
      'マ' => 'マ-モ',
      'ヤ' => 'ヤ-ヨ',
      'ラ' => 'ラ-ロ',
      'ワ' => 'ワヲン'
    }

    indexed_names = patterns.each_with_object({}) do |(key, value), indexed|
      matched_names = names.each_with_object([]) do |name, matched|
        matched << name if /\A([#{value}])/ =~ name
      end
      indexed[key] = matched_names.sort if matched_names.any?
    end
    indexed_names.to_a
  end
end
