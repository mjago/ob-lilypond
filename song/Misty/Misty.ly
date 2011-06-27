
% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*LilyPond%2520Version][LilyPond-Version:1]]

\version "2.12.3"

% LilyPond-Version:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Intro][Intro:1]]

PianoVoiceOneIntro = {
  g'8( bes b d' c' ees' g' d'' |
  < c' ees' f' bes' > 2) bes'4 g' |
}

% Intro:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520One][Verse-One:1]]

PianoVoiceOneVerseOne = {
  <g bes d'> 2.( bes8) c' |
  des'8 c'' c'' c'' c'' bes' g' ees' |
  c'2  \times 2/3 { r8 g aes } \times 2/3 { c'8 ees' g' } |
  bes'8 bes' bes' aes' bes'4. aes'8 |
  g'4 ~ \times 2/3 { g'8 aes' bes' }  
  ees'4 ~ \times 2/3 { ees'8 f' g' } |
  < c' aes' > 8 < aes c' > 4 < aes c' > 8 
  \times 2/3 { < bes d' > 4 < c' ees' > 4 < d' f' > 4 } |
  g'1 ~ | 
  g'2. < bes' c' ees' > 8 < ces' d' g' > 8 |
}

% Verse-One:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Two][Verse-Two:1]]

PianoVoiceOneVerseTwo = {
  < f g bes d' > 2. < f g bes > 8 c' |
  < f bes des' > 8 c'' c'' c'' c'' bes' g' ees' |
  < bes c' > 2 
  \times 2/3 { < bes c' > 8 g aes } \times 2/3 { c' ees' g' } | 
  bes'8 bes' bes' aes' bes'4. aes'8 | 
  g'4 ~ \times 2/3 { g'8 aes' bes' }
  ees'4 ~ \times 2/3 { ees'8 f' g' } |
  < c' ees' aes' > 8 < aes c' > 4 < aes c' > 8   
  \times 2/3 { d'4 ees' f' } |
  ees'4 r16 ees'8 ees'16 ~ ees'4 r16 ees'8 ees'16 ~ | 
  \times 2/3 { < g c' ees' > 4 < c' ees' > < d' f' > } 
  \times 2/3 { < ees' g' > < g' bes' > < a' c'' >  } |
}

% Verse-Two:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Chorus][Chorus:1]]

PianoVoiceOneChorus = {
  \times 2/3 { des''4 des'' des'' } < f' c'' des'' > 2 ~ |
  \times 2/3 { des''4 des'' ees'' }
  \times 2/3 { fes''4 ees'' des'' } |
  \times 2/3 { c'' c'' c'' } c''2 ~ |
  \times 2/3 { < bes' c'' > 4 ees' f' } 
  \times 2/3 { aes' bes' c'' } | 
  < b' d'' > 8 < b' d'' > < b' d'' > < a' c'' > < b' d'' > 2 ~ | 
  < bes' d'' > 8 < b' d'' > < b' d'' > < a' c'' > 
  \times 2/3 { < d'' f'' > 4 < b' d'' > < aes' c'' > } |
  bes'1 |
  < d' g' bes' > 2 < c' ees' g' bes' > 4 < g ces' d' g' > |
}

% Chorus:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Three][Verse-Three:1]]

PianoVoiceOneVerseThree = {
  d'2. bes8 c' |
  < f bes des' > 8 c'' c'' c'' c'' bes' < g d' g' > < g des' ees' > |
  < bes c> 2 \times 2/3 { < bes c' > 8 g aes }
  \times 2/3 {  c' ees' g' } |
  bes'8 bes' bes' aes' bes'4. aes'8 |
  \times 2/3 { g'4 aes' bes' } 
  \times 2/3 { ees'4 f' g' } 
  aes'8 c'4 c'8 \times 2/3 { d'4 ees' f' }
  ees'4 r16 ees8 ees'16 ~ ees'4 r16 ees'8 ees'16 ~ |
  < g c' f bes > 1 |
}

% Verse-Three:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Assembly][Assembly:1]]

PianoVoiceOne = {
  \new Voice = "Voice One" {
    \voiceOne 
    \PianoVoiceOneIntro
    \PianoVoiceOneVerseOne
    \PianoVoiceOneVerseTwo
    \PianoVoiceOneChorus
    \PianoVoiceOneVerseThree
  }
}

% Assembly:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Intro][Intro:1]]

PianoVoiceTwoIntro = {
  r1 |
  r2 < c' d' > 2 |
}

% Intro:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520One][Verse-One:1]]

PianoVoiceTwoVerseOne = {
  r2. g4       |
  r4 < des' f' > 4  < des' fes' > 2 |
  bes2  \times 2/3 { bes8 r r } \times 2/3 { r8 r r } |
  < ces' ees > 2 < ces' ees > 2 |
  r1 |
  r1 |
  ees'4 d' des' c' |
  des'4 c' ces' r  |
}

% Verse-One:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Two][Verse-Two:1]]

PianoVoiceTwoVerseTwo = {
  r1 |
  r4 < d' ges' > < des' f' > < b des' > |
  r1 |
  < ces' ees' > 2 < ces' ees' > 2 |
  r8 < bes d' > 4. r2 |
  r2 c'2  |
  r4 < g c' > 8 < fis b > 8 < f bes > 4  < f bes > 8 < fis b > 8 |
  r1 |
}

% Verse-Two:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Chorus][Chorus:1]]

PianoVoiceTwoChorus = {
  < f' bes' > 2 r2 |
  < f' bes' > 2 < g' ces'' > |
  < ees' bes' > 2 < des' aes' c'' > |
  c'2 c'2 |
  r1 |
  r1 |
  < ees' g' > 4 ces'8 d' c' ees' g' d''  |
  r1 |
}

% Chorus:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Three][Verse-Three:1]]

PianoVoiceTwoVerseThree = {
  < fis a > 2 < g bes > |
  r4 < d' fis' > 4 < des' f' > 4  r4
  r1 |
  < ces' ees' > 2 < ces' ees' > 2 |
  r1 |
  r8 aes4. c'2 |
  r4 < g c' > 8 < fis  b > < f bes > 4 < f bes > 8 < fis b > |
  r1 |
}

% Verse-Three:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Assembly][Assembly:1]]

PianoVoiceTwo = {
  \new Voice= "Voice Two" { 
    \voiceTwo 
    \PianoVoiceTwoIntro
    \PianoVoiceTwoVerseOne
    \PianoVoiceTwoVerseTwo
    \PianoVoiceTwoChorus
    \PianoVoiceTwoVerseThree
  }
}

% Assembly:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Intro][Intro:1]]

PianoVoiceThreeIntro = {
  r1 |
  r1 |
}

% Intro:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520One][Verse-One:1]]

PianoVoiceThreeVerseOne = {
  r4 r8 f d2 |
  r1 |
  g4. e8 f2 |
  r1 |
  r8 f4. r8 < g bes > 4. |
  r4 ees4 r2 |
  b2 bes |
  a 2 aes 4 r |
}

% Verse-One:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Two][Verse-Two:1]]

PianoVoiceThreeVerseTwo = {
  r8 bes, b, d c2 | 
  r1 |
  r8 ees8 e g f2 |
  r1 |
  r2 r8 < g bes > 4. |
  r4 ees r2 |
  r1 |
  bes,1 |
}

% Verse-Two:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Chorus][Chorus:1]]

PianoVoiceThreeChorus = {
  bes2 \times 2/3 { a4 a des' } |
  r1 |
  g2 \times 2/3 { f4 bes aes} |
  g2 \times 2/3 { f4 fes ees} |
  r4 < g c' e' > 2. |
  r4 < fis c' e' > 4 < bes ees' g' > < a ees' g' > |
  r1 |
  r1 |
}

% Chorus:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Three][Verse-Three:1]]

PianoVoiceThreeVerseThree = {
  r1 |
  aes4 a aes r4 | 
  r8 ees e g f2 |
  r1 |
  \times 2/3 { r4 c' d' }
  \times 2/3 { r4 ces' bes }
  r4 ees r2 |
  r1
}

% Verse-Three:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Assembly][Assembly:1]]

PianoVoiceThree = {
  \new Voice = "Voice Three" {
    \voiceOne 
    \PianoVoiceThreeIntro
    \PianoVoiceThreeVerseOne
    \PianoVoiceThreeVerseTwo
    \PianoVoiceThreeChorus
    \PianoVoiceThreeVerseThree
  }
}

% Assembly:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Intro][Intro:1]]

PianoVoiceFourIntro = {
  < bes, f g > 1 | 
  < bes, aes > 2 < bes, aes > 2 | 
}

% Intro:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520One][Verse-One:1]]

PianoVoiceFourVerseOne = {
  < ees, bes, > 1 |  
  < bes, f aes > 2 < bes, g > 2 |
  aes,1 |
  < aes, ges > 2 < aes, f > |
  g,2 c |
  f,2 < bes, aes > 4 < aes, ges > 4 |
  < g, f > 2 < c e > |
  < f, ees > 2 < b, d > 4 < b, aes > 4 | 
}

% Verse-One:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Two][Verse-Two:1]]

PianoVoiceFourVerseTwo = {
  ees,1 |
  < bes, aes > 2. ees,4 |
  aes,1 |
  < aes, ges > 2 < des f > |
  ees2 c2 |
  f,2 < bes, aes > | 
  r4 < ees, bes, > 8 < d, a, > 8 < des, aes, > 4 < des, aes, > 8 < d, a, > 8 |
  ees,1 |
}

% Verse-Two:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Chorus][Chorus:1]]

PianoVoiceFourChorus = {
  bes,1 ~ |
  < bes, aes > 2 < ees des' > 2 |
  aes,1 ~ |
  aes,1 |
  a,2. d8 a, |
  d,2 r2 |
  < f aes > 1
  < bes, aes > 2 < bes, aes > 2 |
}

% Chorus:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Three][Verse-Three:1]]

PianoVoiceFourVerseThree = {
  < ees, bes, > 1 |
  bes,2. e,8 a, |
  aes,1 |
  < aes, ges > 2 < des f > |
  ees2 c |
  f,2 < bes, aes, > |
  r4 < ees, bes, > 8 < d, a, > < des, aes, > 4 < des, aes, > 8 < d, a, >   
  < ees, bes, > 1
}

% Verse-Three:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Assembly][Assembly:1]]

PianoVoiceFour = {
  \new Voice= "Voice Four" { 
    \voiceTwo 
    \PianoVoiceFourIntro
    \PianoVoiceFourVerseOne
    \PianoVoiceFourVerseTwo
    \PianoVoiceFourChorus
    \PianoVoiceFourVerseThree
  }
}

% Assembly:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Intro][Intro:1]]

DrumIntro = {
  r1 r1 
}

% Intro:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520One][Verse-One:1]]

DrumVerseOne = {
  \drummode {
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
  }  
}

% Verse-One:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Two][Verse-Two:1]]

DrumVerseTwo = {
  \drummode {
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
  }
}

% Verse-Two:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Chorus][Chorus:1]]

DrumChorus = {
  \drummode {
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
  }
}

% Chorus:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Verse%2520Three][Verse-Three:1]]

DrumVerseThree = {
  \drummode {
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd16 hh16 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 hh8 hh8 hh8 sn8 hh8 hh8 hh8 
    bd8 r8 r2.
  }
}

% Verse-Three:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Assembly][Assembly:1]]

DrumBeats = {
  \DrumIntro
  \DrumVerseOne
  \DrumVerseTwo
  \DrumChorus
  \DrumVerseThree
}

% Assembly:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Number%2520of%2520bars%2520to%2520compile%2520(showLastLength)][Number-of-bars-to-compile-\(showLastLength\):1]]

%  showLastLength = R1*8

% Number-of-bars-to-compile-\(showLastLength\):1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Score%2520Start][Score-Start:1]]

\score {
      
  <<

% Score-Start:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Piano][Piano:1]]

<<
  
  \new Staff { 
    \relative ees'
    \key ees \major
    
    <<

      \PianoVoiceOne
      \PianoVoiceTwo

    >>
    
  }
  
  \new Staff {
    \clef bass 
    \key ees \major
    
    <<

      \PianoVoiceThree  
      \PianoVoiceFour
      
    >>
    
  }
  
>>

% Piano:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Drums][Drums:1]]

\new DrumStaff {
  \DrumBeats
}

% Drums:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Score%2520End][Score-End:1]]

>>

% Score-End:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Layout%2520and%2520Midi][Layout-and-Midi:1]]

\layout {
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }

}

% Layout-and-Midi:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Paper][Paper:1]]

\paper {
  #(define dump-extents #t) 
  
  indent = 0\mm
  line-width = 200\mm - 2.0 * 0.4\in
  ragged-right = #""
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

% Paper:1 ends here

% [[file:~/.emacs.d/martyn/martyn/ob-lilypond/song/Misty/Misty.org::*Header][Header:1]]

\header {
  title = \markup \center-column {"Misty"} 
  composer =  \markup \center-column { "Music by" \small "Erroll Garner" }
  poet =  \markup \center-column { "ob-lilypond" \small "example" }
}

% Header:1 ends here
