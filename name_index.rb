class NameIndex
    PATTERNS = {
      'ア' => 'ア-オヴ',
      'カ' => 'カ-コ',
      'サ' => 'サ-ソ',
      'タ' => 'タ-ト',
      'ナ' => 'ナ-ノ',
      'ハ' => 'ハ-ホ',
      'マ' => 'マ-モ',
      'ヤ' => 'ヤ-ヨ',
      'ラ' => 'ラ-ロ',
      'ワ' => 'ワヲン'
    }.freeze

  def self.create_index(names)

    PATTERNS.each_with_object([]) do |(head_char, pattern), indexed|
      matched_names = names.sort.select do |name|
        /\A([#{pattern}])/ =~ name
      end
      indexed << [head_char, matched_names] if matched_names.any?
    end
  end
end
