
% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Version][Version:1]]

\version "2.12.3"

% Version:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Arpeggios][Arpeggios:1]]

Carp = {
  c'16 d'16 e'16 f'16 g'16 a'16 b'16 c''16 r2 
  c''16 b'16 a'16 g'16 f'16 e'16 d'16 c'16 r2 
}

Garp = {
  g'16 a'16 b'16 c''16 d''16 e''16 f''16 g''16 r2 
  g''16 f''16 e''16 d''16 c''16 b'16 a'16 g'16 r2 
}

Darp = {
  d'16 e'16 f'16 g'16 a'16 b'16 c''16 d''16 r2 
  d''16 c''16 b'16 a'16 g'16 f'16 e'16 d'16 r2 
}

Aarp = {
  a'16 b'16 c''16 d''16 e''16 f''16 g''16 a''16 r2 
  a''16 g''16 f''16 e''16 d''16 c''16 b'16 a'16 r2 
}

Earp = {
  e'16 f'16 g'16 a'16 b'16 c''16 d''16 e''16 r2 
  e''16 d''16 c''16 b'16 a'16 g'16 f'16 e'16 r2 
}

Barp = {
  b'16 c''16 d''16 e''16 f''16 g''16 a''16 b''16 r2 
  b''16 a''16 g''16 f''16 e''16 d''16 c''16 b'16 r2 
}

Farp = {
  f'16 g'16 a'16 b'16 c''16 d''16 e''16 f''16 r2 
  f''16 e''16 d''16 c''16 b'16 a'16 g'16 f'16 r2 
}

% Arpeggios:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Triads][Triads:1]]

Ctriads = {
  < c' f'a'c'> 4< c' f'a'c'> 4< c' f'a'c'> 4< c' f'a'c'> 4
  < c' g'b'd'> 4< c' g'b'd'> 4< c' g'b'd'> 4< c' g'b'd'> 4
}

Gtriads = {
  < g' c'e'g'> 4< g' c'e'g'> 4< g' c'e'g'> 4< g' c'e'g'> 4
  < g' d'f'a'> 4< g' d'f'a'> 4< g' d'f'a'> 4< g' d'f'a'> 4
}

Dtriads = {
  < d' g'b'd'> 4< d' g'b'd'> 4< d' g'b'd'> 4< d' g'b'd'> 4
  < d' a'c'e'> 4< d' a'c'e'> 4< d' a'c'e'> 4< d' a'c'e'> 4
}

Atriads = {
  < a' d'f'a'> 4< a' d'f'a'> 4< a' d'f'a'> 4< a' d'f'a'> 4
  < a' e'g'b'> 4< a' e'g'b'> 4< a' e'g'b'> 4< a' e'g'b'> 4
}

Etriads = {
  < e' a'c'e'> 4< e' a'c'e'> 4< e' a'c'e'> 4< e' a'c'e'> 4
  < e' b'd'f'> 4< e' b'd'f'> 4< e' b'd'f'> 4< e' b'd'f'> 4
}

Btriads = {
  < b' e'g'b'> 4< b' e'g'b'> 4< b' e'g'b'> 4< b' e'g'b'> 4
  < b' f'a'c'> 4< b' f'a'c'> 4< b' f'a'c'> 4< b' f'a'c'> 4
}

Ftriads = {
  < f' b'd'f'> 4< f' b'd'f'> 4< f' b'd'f'> 4< f' b'd'f'> 4
  < f' c'e'g'> 4< f' c'e'g'> 4< f' c'e'g'> 4< f' c'e'g'> 4
}

% Triads:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Drums%2520(four%2520bars)][Drums-\(four-bars\):1]]

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

% Drums-\(four-bars\):1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Number%2520of%2520bars%2520to%2520compile%2520(showLastLength)][Number-of-bars-to-compile-\(showLastLength\):1]]

%  showLastLength = R1*8

% Number-of-bars-to-compile-\(showLastLength\):1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Score][Score:1]]

\score {

<<

  \new Staff {
    \relative c' 
    \key c \major
    
     \set Staff.midiInstrument = #"acoustic grand"
      \Barp  \Barp
      \Earp  \Earp
      \Aarp  \Aarp
      \Darp  \Darp
      \Garp  \Garp
      \Carp  \Carp
      \Farp  \Farp

      \Carp  \Carp
      \Garp  \Garp
      \Darp  \Darp
      \Aarp  \Aarp
      \Earp  \Earp
      \Barp  \Barp
      \Farp  \Farp
      \Carp  \Carp
  }

  \new Staff {
    \relative c' 
    \key c \major
     \set Staff.midiInstrument = #"acoustic grand"
      \Btriads  \Btriads
      \Etriads  \Etriads
      \Atriads  \Atriads
      \Dtriads  \Dtriads
      \Gtriads  \Gtriads
      \Ctriads  \Ctriads
      \Ftriads  \Ftriads
      
      \Ctriads  \Ctriads
      \Gtriads  \Gtriads
      \Dtriads  \Dtriads
      \Atriads  \Atriads
      \Etriads  \Etriads
      \Btriads  \Btriads
      \Ftriads  \Ftriads
      \Ctriads  \Ctriads
 
  }

  \new Staff {
    \clef bass
    \relative c 
    \key c \major
     \set Staff.midiInstrument = #"slap bass 2"
    b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | 
    e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | 
    a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | 
    d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | 
    g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | 
    c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | 
    f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | 
    
    c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | 
    g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | g,,8 g, g, g, g,, g, g, g16 g,16 | 
    d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | d,,8 d, d, d, d,, d, d, d16 d,16 | 
    a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | a,,8 a, a, a, a,, a, a, a16 a,16 | 
    e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | e,,8 e, e, e, e,, e, e, e16 e,16 | 
    b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | b,,8 b, b, b, b,, b, b, b16 b,16 | 
    f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | f,,8 f, f, f, f,, f, f, f16 f,16 | 
    c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | c,,8 c, c, c, c,, c, c, c16 c,16 | 

  }

  \new DrumStaff {
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars

    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
    \DrumsFourBars
  }

>>
  
\layout {
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }

}

% Score:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Paper][Paper:1]]

\paper {
  #(define dump-extents #t) 
  
  indent = 0\mm
  line-width = 200\mm - 2.0 * 0.4\in
  ragged-right = #""
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

% Paper:1 ends here

% [[file:~/ob-lilypond/examples/arrange-mode/Modes-in-Key-of-C/modes-in-key-of-c.org::*Header][Header:1]]

\header {
  title = \markup \center-column {"Modes in the Key of C"} 
  composer =  \markup \center-column { "Music by" \small "Martyn Jago" }
  poet =  \markup \center-column { "ob-lilypond" \small "example 2" }
}

% Header:1 ends here
