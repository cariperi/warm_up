def remove_vowels(text)
  text.delete("aeiou")
end

text = "The epidemiological evidence provides compelling support for the hypothesis emerging from etiological studies."
expect = "Th pdmlgcl vdnc prvds cmpllng spprt fr th hypthss mrgng frm tlgcl stds."

p actual = remove_vowels(text)
p actual == expect