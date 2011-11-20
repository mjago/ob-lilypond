
% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Version][Version:1]]

\version "2.12.3"

% Version:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Arpeggios][Arpeggios:1]]

Arps = {
  \relative c {c16 d16 e16 f16 g16 a16 b16 c16 r2 } | r1 |  
  \relative c'' {c16 b16 a16 g16 f16 e16 d16 c16 r2 } | r1 | 
  
  \relative c {c16 d16 e16 f16 g16 a16 bes16 c16 r2 } | r1 |  
  \relative c'' {c16 bes16 a16 g16 f16 e16 d16 c16 r2 } | r1 | 
  
  \relative c {c16 d16 ees16 f16 g16 a16 bes16 c16 r2 } | r1 |  
  \relative c'' {c16 bes16 a16 g16 f16 ees16 d16 c16 r2 } | r1 | 
  
  \relative c {c16 d16 ees16 f16 g16 aes16 bes16 c16 r2 } | r1 |  
  \relative c'' {c16 bes16 aes16 g16 f16 ees16 d16 c16 r2 } | r1 | 
  
  \relative c {c16 des16 ees16 f16 g16 aes16 bes16 c16 r2 } | r1 |  
  \relative c'' {c16 bes16 aes16 g16 f16 ees16 des16 c16 r2 } | r1 | 
  
  \relative c {c16 des16 ees16 f16 ges16 aes16 bes16 c16 r2 } | r1 |  
  \relative c'' {c16 bes16 aes16 ges16 f16 ees16 des16 c16 r2 } | r1 | 
  
  \relative c {ces16 des16 ees16 f16 ges16 aes16 bes16 ces16 r2 } | r1 |  
  \relative c'' {ces16 bes16 aes16 ges16 f16 ees16 des16 ces16 r2 } | r1 | 
  
  \relative c {b16 cis16 dis16 e16 fis16 gis16 ais16 b16 r2 } | r1 |  
  \relative c'' {b16 ais16 gis16 fis16 e16 dis16 cis16 b16 r2 } | r1 | 
  
  \relative c {b16 cis16 dis16 e16 fis16 gis16 a16 b16 r2 } | r1 |  
  \relative c'' {b16 a16 gis16 fis16 e16 dis16 cis16 b16 r2 } | r1 | 
  
  \relative c {b16 cis16 d16 e16 fis16 gis16 a16 b16 r2 } | r1 |  
  \relative c'' {b16 a16 gis16 fis16 e16 d16 cis16 b16 r2 } | r1 | 
  
  \relative c {b16 cis16 d16 e16 fis16 g16 a16 b16 r2 } | r1 |  
  \relative c'' {b16 a16 g16 fis16 e16 d16 cis16 b16 r2 } | r1 | 
  
  \relative c {b16 c16 d16 e16 fis16 g16 a16 b16 r2 } | r1 |  
  \relative c'' {b16 a16 g16 fis16 e16 d16 c16 b16 r2 } | r1 | 
  
  \relative c {b16 c16 d16 e16 f16 g16 a16 b16 r2 } | r1 |  
  \relative c'' {b16 a16 g16 f16 e16 d16 c16 b16 r2 } | r1 | 
  
  \relative c {bes16 c16 d16 e16 f16 g16 a16 bes16 r2 } | r1 |  
  \relative c'' {bes16 a16 g16 f16 e16 d16 c16 bes16 r2 } | r1 | 
  
  \relative c {bes16 c16 d16 ees16 f16 g16 a16 bes16 r2 } | r1 |  
  \relative c'' {bes16 a16 g16 f16 ees16 d16 c16 bes16 r2 } | r1 | 
  
  \relative c {bes16 c16 d16 ees16 f16 g16 aes16 bes16 r2 } | r1 |  
  \relative c'' {bes16 aes16 g16 f16 ees16 d16 c16 bes16 r2 } | r1 | 
  
  \relative c {bes16 c16 des16 ees16 f16 g16 aes16 bes16 r2 } | r1 |  
  \relative c'' {bes16 aes16 g16 f16 ees16 des16 c16 bes16 r2 } | r1 | 
  
  \relative c {bes16 c16 des16 ees16 f16 ges16 aes16 bes16 r2 } | r1 |  
  \relative c'' {bes16 aes16 ges16 f16 ees16 des16 c16 bes16 r2 } | r1 | 
  
  \relative c {bes16 ces16 des16 ees16 f16 ges16 aes16 bes16 r2 } | r1 |  
  \relative c'' {bes16 aes16 ges16 f16 ees16 des16 ces16 bes16 r2 } | r1 | 
  
  \relative c {ais16 b16 cis16 dis16 e16 fis16 gis16 ais16 r2 } | r1 |  
  \relative c'' {ais16 gis16 fis16 e16 dis16 cis16 b16 ais16 r2 } | r1 | 
  
  \relative c {a16 b16 cis16 dis16 e16 fis16 gis16 a16 r2 } | r1 |  
  \relative c'' {a16 gis16 fis16 e16 dis16 cis16 b16 a16 r2 } | r1 | 
  
  \relative c {a16 b16 cis16 d16 e16 fis16 gis16 a16 r2 } | r1 |  
  \relative c'' {a16 gis16 fis16 e16 d16 cis16 b16 a16 r2 } | r1 | 
  
  \relative c {a16 b16 cis16 d16 e16 fis16 g16 a16 r2 } | r1 |  
  \relative c'' {a16 g16 fis16 e16 d16 cis16 b16 a16 r2 } | r1 | 
  
  \relative c {a16 b16 c16 d16 e16 fis16 g16 a16 r2 } | r1 |  
  \relative c'' {a16 g16 fis16 e16 d16 c16 b16 a16 r2 } | r1 | 
  
  \relative c {a16 b16 c16 d16 e16 f16 g16 a16 r2 } | r1 |  
  \relative c'' {a16 g16 f16 e16 d16 c16 b16 a16 r2 } | r1 | 
  
  \relative c {a16 bes16 c16 d16 e16 f16 g16 a16 r2 } | r1 |  
  \relative c'' {a16 g16 f16 e16 d16 c16 bes16 a16 r2 } | r1 | 
  
  \relative c {a16 bes16 c16 d16 ees16 f16 g16 a16 r2 } | r1 |  
  \relative c'' {a16 g16 f16 ees16 d16 c16 bes16 a16 r2 } | r1 | 
  
  \relative c {aes16 bes16 c16 d16 ees16 f16 g16 aes16 r2 } | r1 |  
  \relative c'' {aes16 g16 f16 ees16 d16 c16 bes16 aes16 r2 } | r1 | 
  
  \relative c {aes16 bes16 c16 des16 ees16 f16 g16 aes16 r2 } | r1 |  
  \relative c'' {aes16 g16 f16 ees16 des16 c16 bes16 aes16 r2 } | r1 | 
  
  \relative c {aes16 bes16 c16 des16 ees16 f16 ges16 aes16 r2 } | r1 |  
  \relative c'' {aes16 ges16 f16 ees16 des16 c16 bes16 aes16 r2 } | r1 | 
  
  \relative c {aes16 bes16 ces16 des16 ees16 f16 ges16 aes16 r2 } | r1 |  
  \relative c'' {aes16 ges16 f16 ees16 des16 ces16 bes16 aes16 r2 } | r1 | 
  
  \relative c {gis16 ais16 b16 cis16 dis16 e16 fis16 gis16 r2 } | r1 |  
  \relative c'' {gis16 fis16 e16 dis16 cis16 b16 ais16 gis16 r2 } | r1 | 
  
  \relative c {gis16 a16 b16 cis16 dis16 e16 fis16 gis16 r2 } | r1 |  
  \relative c'' {gis16 fis16 e16 dis16 cis16 b16 a16 gis16 r2 } | r1 | 
  
  \relative c {gis16 a16 b16 cis16 d16 e16 fis16 gis16 r2 } | r1 |  
  \relative c'' {gis16 fis16 e16 d16 cis16 b16 a16 gis16 r2 } | r1 | 
  
  \relative c {g16 a16 b16 cis16 d16 e16 fis16 g16 r2 } | r1 |  
  \relative c'' {g16 fis16 e16 d16 cis16 b16 a16 g16 r2 } | r1 | 
  
  \relative c {g16 a16 b16 c16 d16 e16 fis16 g16 r2 } | r1 |  
  \relative c'' {g16 fis16 e16 d16 c16 b16 a16 g16 r2 } | r1 | 
  
  \relative c {g16 a16 b16 c16 d16 e16 f16 g16 r2 } | r1 |  
  \relative c'' {g16 f16 e16 d16 c16 b16 a16 g16 r2 } | r1 | 
  
  \relative c {g16 a16 bes16 c16 d16 e16 f16 g16 r2 } | r1 |  
  \relative c'' {g16 f16 e16 d16 c16 bes16 a16 g16 r2 } | r1 | 
  
  \relative c {g16 a16 bes16 c16 d16 ees16 f16 g16 r2 } | r1 |  
  \relative c'' {g16 f16 ees16 d16 c16 bes16 a16 g16 r2 } | r1 | 
  
  \relative c {g16 aes16 bes16 c16 d16 ees16 f16 g16 r2 } | r1 |  
  \relative c'' {g16 f16 ees16 d16 c16 bes16 aes16 g16 r2 } | r1 | 
  
  \relative c {g16 aes16 bes16 c16 des16 ees16 f16 g16 r2 } | r1 |  
  \relative c'' {g16 f16 ees16 des16 c16 bes16 aes16 g16 r2 } | r1 | 
  
  \relative c {ges16 aes16 bes16 c16 des16 ees16 f16 ges16 r2 } | r1 |  
  \relative c'' {ges16 f16 ees16 des16 c16 bes16 aes16 ges16 r2 } | r1 | 
  
  \relative c {ges16 aes16 bes16 ces16 des16 ees16 f16 ges16 r2 } | r1 |  
  \relative c'' {ges16 f16 ees16 des16 ces16 bes16 aes16 ges16 r2 } | r1 | 
  
  \relative c {fis16 gis16 ais16 b16 cis16 dis16 e16 fis16 r2 } | r1 |  
  \relative c'' {fis16 e16 dis16 cis16 b16 ais16 gis16 fis16 r2 } | r1 | 
  
  \relative c {fis16 gis16 a16 b16 cis16 dis16 e16 fis16 r2 } | r1 |  
  \relative c'' {fis16 e16 dis16 cis16 b16 a16 gis16 fis16 r2 } | r1 | 
  
  \relative c {fis16 gis16 a16 b16 cis16 d16 e16 fis16 r2 } | r1 |  
  \relative c'' {fis16 e16 d16 cis16 b16 a16 gis16 fis16 r2 } | r1 | 
  
  \relative c {fis16 g16 a16 b16 cis16 d16 e16 fis16 r2 } | r1 |  
  \relative c'' {fis16 e16 d16 cis16 b16 a16 g16 fis16 r2 } | r1 | 
  
  \relative c {fis16 g16 a16 b16 c16 d16 e16 fis16 r2 } | r1 |  
  \relative c'' {fis16 e16 d16 c16 b16 a16 g16 fis16 r2 } | r1 | 
  
  \relative c {f16 g16 a16 b16 c16 d16 e16 f16 r2 } | r1 |  
  \relative c'' {f16 e16 d16 c16 b16 a16 g16 f16 r2 } | r1 | 
  
  \relative c {f16 g16 a16 bes16 c16 d16 e16 f16 r2 } | r1 |  
  \relative c'' {f16 e16 d16 c16 bes16 a16 g16 f16 r2 } | r1 | 
  
  \relative c {f16 g16 a16 bes16 c16 d16 ees16 f16 r2 } | r1 |  
  \relative c'' {f16 ees16 d16 c16 bes16 a16 g16 f16 r2 } | r1 | 
  
  \relative c {f16 g16 aes16 bes16 c16 d16 ees16 f16 r2 } | r1 |  
  \relative c'' {f16 ees16 d16 c16 bes16 aes16 g16 f16 r2 } | r1 | 
  
  \relative c {f16 g16 aes16 bes16 c16 des16 ees16 f16 r2 } | r1 |  
  \relative c'' {f16 ees16 des16 c16 bes16 aes16 g16 f16 r2 } | r1 | 
  
  \relative c {f16 ges16 aes16 bes16 c16 des16 ees16 f16 r2 } | r1 |  
  \relative c'' {f16 ees16 des16 c16 bes16 aes16 ges16 f16 r2 } | r1 | 
  
  \relative c {f16 ges16 aes16 bes16 ces16 des16 ees16 f16 r2 } | r1 |  
  \relative c'' {f16 ees16 des16 ces16 bes16 aes16 ges16 f16 r2 } | r1 | 
  
  \relative c {e16 fis16 gis16 ais16 b16 cis16 dis16 e16 r2 } | r1 |  
  \relative c'' {e16 dis16 cis16 b16 ais16 gis16 fis16 e16 r2 } | r1 | 
  
  \relative c {e16 fis16 gis16 a16 b16 cis16 dis16 e16 r2 } | r1 |  
  \relative c'' {e16 dis16 cis16 b16 a16 gis16 fis16 e16 r2 } | r1 | 
  
  \relative c {e16 fis16 gis16 a16 b16 cis16 d16 e16 r2 } | r1 |  
  \relative c'' {e16 d16 cis16 b16 a16 gis16 fis16 e16 r2 } | r1 | 
  
  \relative c {e16 fis16 g16 a16 b16 cis16 d16 e16 r2 } | r1 |  
  \relative c'' {e16 d16 cis16 b16 a16 g16 fis16 e16 r2 } | r1 | 
  
  \relative c {e16 fis16 g16 a16 b16 c16 d16 e16 r2 } | r1 |  
  \relative c'' {e16 d16 c16 b16 a16 g16 fis16 e16 r2 } | r1 | 
  
  \relative c {e16 f16 g16 a16 b16 c16 d16 e16 r2 } | r1 |  
  \relative c'' {e16 d16 c16 b16 a16 g16 f16 e16 r2 } | r1 | 
  
  \relative c {e16 f16 g16 a16 bes16 c16 d16 e16 r2 } | r1 |  
  \relative c'' {e16 d16 c16 bes16 a16 g16 f16 e16 r2 } | r1 | 
  
  \relative c {ees16 f16 g16 a16 bes16 c16 d16 ees16 r2 } | r1 |  
  \relative c'' {ees16 d16 c16 bes16 a16 g16 f16 ees16 r2 } | r1 | 
  
  \relative c {ees16 f16 g16 aes16 bes16 c16 d16 ees16 r2 } | r1 |  
  \relative c'' {ees16 d16 c16 bes16 aes16 g16 f16 ees16 r2 } | r1 | 
  
  \relative c {ees16 f16 g16 aes16 bes16 c16 des16 ees16 r2 } | r1 |  
  \relative c'' {ees16 des16 c16 bes16 aes16 g16 f16 ees16 r2 } | r1 | 
  
  \relative c {ees16 f16 ges16 aes16 bes16 c16 des16 ees16 r2 } | r1 |  
  \relative c'' {ees16 des16 c16 bes16 aes16 ges16 f16 ees16 r2 } | r1 | 
  
  \relative c {ees16 f16 ges16 aes16 bes16 ces16 des16 ees16 r2 } | r1 |  
  \relative c'' {ees16 des16 ces16 bes16 aes16 ges16 f16 ees16 r2 } | r1 | 
  
  \relative c {dis16 e16 fis16 gis16 ais16 b16 cis16 dis16 r2 } | r1 |  
  \relative c'' {dis16 cis16 b16 ais16 gis16 fis16 e16 dis16 r2 } | r1 | 
  
  \relative c {dis16 e16 fis16 gis16 a16 b16 cis16 dis16 r2 } | r1 |  
  \relative c'' {dis16 cis16 b16 a16 gis16 fis16 e16 dis16 r2 } | r1 | 
  
  \relative c {d16 e16 fis16 gis16 a16 b16 cis16 d16 r2 } | r1 |  
  \relative c'' {d16 cis16 b16 a16 gis16 fis16 e16 d16 r2 } | r1 | 
  
  \relative c {d16 e16 fis16 g16 a16 b16 cis16 d16 r2 } | r1 |  
  \relative c'' {d16 cis16 b16 a16 g16 fis16 e16 d16 r2 } | r1 | 
  
  \relative c {d16 e16 fis16 g16 a16 b16 c16 d16 r2 } | r1 |  
  \relative c'' {d16 c16 b16 a16 g16 fis16 e16 d16 r2 } | r1 | 
  
  \relative c {d16 e16 f16 g16 a16 b16 c16 d16 r2 } | r1 |  
  \relative c'' {d16 c16 b16 a16 g16 f16 e16 d16 r2 } | r1 | 
  
  \relative c {d16 e16 f16 g16 a16 bes16 c16 d16 r2 } | r1 |  
  \relative c'' {d16 c16 bes16 a16 g16 f16 e16 d16 r2 } | r1 | 
  
  \relative c {d16 ees16 f16 g16 a16 bes16 c16 d16 r2 } | r1 |  
  \relative c'' {d16 c16 bes16 a16 g16 f16 ees16 d16 r2 } | r1 | 
  
  \relative c {d16 ees16 f16 g16 aes16 bes16 c16 d16 r2 } | r1 |  
  \relative c'' {d16 c16 bes16 aes16 g16 f16 ees16 d16 r2 } | r1 | 
  
  \relative c {des16 ees16 f16 g16 aes16 bes16 c16 des16 r2 } | r1 |  
  \relative c'' {des16 c16 bes16 aes16 g16 f16 ees16 des16 r2 } | r1 | 
  
  \relative c {des16 ees16 f16 ges16 aes16 bes16 c16 des16 r2 } | r1 |  
  \relative c'' {des16 c16 bes16 aes16 ges16 f16 ees16 des16 r2 } | r1 | 
  
  \relative c {des16 ees16 f16 ges16 aes16 bes16 ces16 des16 r2 } | r1 |  
  \relative c'' {des16 ces16 bes16 aes16 ges16 f16 ees16 des16 r2 } | r1 | 
  
  \relative c {cis16 dis16 e16 fis16 gis16 ais16 b16 cis16 r2 } | r1 |  
  \relative c'' {cis16 b16 ais16 gis16 fis16 e16 dis16 cis16 r2 } | r1 | 
  
  \relative c {cis16 dis16 e16 fis16 gis16 a16 b16 cis16 r2 } | r1 |  
  \relative c'' {cis16 b16 a16 gis16 fis16 e16 dis16 cis16 r2 } | r1 | 
  
  \relative c {cis16 d16 e16 fis16 gis16 a16 b16 cis16 r2 } | r1 |  
  \relative c'' {cis16 b16 a16 gis16 fis16 e16 d16 cis16 r2 } | r1 | 
  
  \relative c {cis16 d16 e16 fis16 g16 a16 b16 cis16 r2 } | r1 |  
  \relative c'' {cis16 b16 a16 g16 fis16 e16 d16 cis16 r2 } | r1 | 
  
  \relative c {c16 d16 e16 fis16 g16 a16 b16 c16 r2 } | r1 |  
  \relative c'' {c16 b16 a16 g16 fis16 e16 d16 c16 r2 } | r1 | 
  
  \relative c {c16 d16 e16 f16 g16 a16 b16 c16 r2 } | r1 |  
  \relative c'' {c16 b16 a16 g16 f16 e16 d16 c16 r2 } | r1 | 
  

  < c, g, c' e g b > 1
}

% Arpeggios:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Triads][Triads:1]]

Triads = {
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
  \relative a' {
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
  }
  \relative a' {
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
  }
  \relative a' {
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < bes d f > 4   < bes d f > 4   < bes d f > 4   < bes d f > 4 |
  }
  \relative a' {
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ees g bes > 4   < ees g bes > 4   < ees g bes > 4   < ees g bes > 4 |
  }
  \relative a' {
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
    < ges bes des > 4   < ges bes des > 4   < ges bes des > 4   < ges bes des > 4 |
    < aes c ees > 4   < aes c ees > 4   < aes c ees > 4   < aes c ees > 4 |
  }
  \relative a' {
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
    < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4   < ces ees ges > 4 |
    < des f aes > 4   < des f aes > 4   < des f aes > 4   < des f aes > 4 |
  }
  \relative a' {
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4   < fis ais cis > 4 |
  }
  \relative a' {
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < b dis fis > 4   < b dis fis > 4   < b dis fis > 4   < b dis fis > 4 |
  }
  \relative a' {
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < e gis b > 4   < e gis b > 4   < e gis b > 4   < e gis b > 4 |
  }
  \relative a' {
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < a cis e > 4   < a cis e > 4   < a cis e > 4   < a cis e > 4 |
  }
  \relative a' {
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
    < c e g > 4   < c e g > 4   < c e g > 4   < c e g > 4 |
    < d fis a > 4   < d fis a > 4   < d fis a > 4   < d fis a > 4 |
  }
  \relative a' {
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
    < f a c > 4   < f a c > 4   < f a c > 4   < f a c > 4 |
    < g b d > 4   < g b d > 4   < g b d > 4   < g b d > 4 |
  }
}

% Triads:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Drums%2520(four%2520bars)][Drums-\(four-bars\):1]]

DrumsFourBars = {
    \drummode {
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 |
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 bd16 |
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 |
      bd16 hh16 hh16 hh16 sn16 hh16 hh16 hh16 
      bd16 hh16 hh16 hh16 sn16 hh16 sn16 bd16 |
    }
  }

 DrumsSixteenBars = {
   \DrumsFourBars \DrumsFourBars
   \DrumsFourBars \DrumsFourBars
}

% Drums-\(four-bars\):1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Drums%2520(four%2520bars)][Drums-\(four-bars\):2]]

Drums = {
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsSixteenBars \DrumsSixteenBars \DrumsSixteenBars
 \DrumsFourBars
}

% Drums-\(four-bars\):2 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Bass][Bass:1]]

Bass = {
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
        b8 b, b' b b b b b'16 b,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
        bes8 bes, bes' bes bes bes bes bes'16 bes,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
        a8 a, a' a a a a a'16 a,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
        aes8 aes, aes' aes aes aes aes aes'16 aes,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
        g8 g, g' g g g g g'16 g,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
        ges8 ges, ges' ges ges ges ges ges'16 ges,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
        f8 f, f' f f f f f'16 f,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
        e8 e, e' e e e e e'16 e,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
        ees8 ees, ees' ees ees ees ees ees'16 ees,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
        d8 d, d' d d d d d'16 d,16 |
      } 
      \relative g, { 
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
      } 
      \relative g, { 
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
      } 
      \relative g, { 
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
        des8 des, des' des des des des des'16 des,16 |
      } 
      \relative g, { 
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
      } 
      \relative g, { 
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
      } 
      \relative g, { 
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
      } 
      \relative g, { 
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
        cis8 cis, cis' cis cis cis cis cis'16 cis,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
      \relative g, { 
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
        c8 c, c' c c c c c'16 c,16 |
      } 
}

% Bass:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Number%2520of%2520bars%2520to%2520compile%2520(showLastLength)][Number-of-bars-to-compile-\(showLastLength\):1]]

%  showLastLength = R1*17

% Number-of-bars-to-compile-\(showLastLength\):1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Score][Score:1]]

\score {

<<

  \new Staff {
    \key c \major
    \set Staff.midiInstrument = #"acoustic grand"
    \Arps 
  }

  \new Staff {
    \key c \major
    \set Staff.midiInstrument = #"acoustic grand"
    \Triads 
  }

  \new Staff {
    \clef bass
    \key c \major
    \set Staff.midiInstrument = #"slap bass 2"
    \Bass
  }

  \new DrumStaff {
    \Drums
  }

>>
  
  \layout {
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}

% Score:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Paper][Paper:1]]

\paper {
  #(define dump-extents #t) 
  
  indent = 0\mm
  line-width = 200\mm - 2.0 * 0.4\in
  ragged-right = #""
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

% Paper:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modal-Cycle/modal-cycle.org::*Header][Header:1]]

\header {
  title = \markup \center-column {"Modal Cycle"} 
  composer =  \markup \center-column { "Music by" \small "Martyn Jago" }
  poet =  \markup \center-column { "ob-lilypond" \small "example 3" }
}

% Header:1 ends here
