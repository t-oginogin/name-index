require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify { expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ'])).to eq [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ] }

  specify { expect(NameIndex.create_index(['ンゴ', 'パパス', 'オギ', 'ジェームズ', 'シェームズ', 'オキ', 'ヴァイオリン'])).to eq [ ['ア', ['オキ','オギ','ヴァイオリン']], ['サ', ['シェームズ', 'ジェームズ']], ['ハ', ['パパス']], ['ワ', ['ンゴ']] ] }
end
