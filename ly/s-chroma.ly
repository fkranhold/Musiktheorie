\version "2.24.4"
\include "layout.ily"

\new ChoirStaff <<
  \new Staff <<
    \relative c'' {
      \time 3/4
      \key a \major
      <<
        {
          \voiceOne
          \set fingeringOrientations = #'(right)
          \partial 4 {e,4} a4 a8 b a gis fis4 fis fis b4 b8 cis b a gis4 e e cis' cis8 d cis b a4 fis e8 e fis4 b gis a2.
        }
        \new Voice {
          \voiceTwo
          \set fingeringOrientations = #'(right)
          \partial 4 {s4} e2. d fis e gis fis2 e4 d d d cis2.
        }
      >> 
    }
  >>
  \new Staff <<
    \clef "bass" \relative c' {
      \key a \major
      <<
        {
          \voiceOne
          \set fingeringOrientations = #'(right)
          \partial 4 {s4} a2. a2. b2. b2. cis cis2 a4 a b b a2.
        }
        \new Voice {
          \voiceTwo
          \set fingeringOrientations = #'(right)
          \partial 4 {s4} cis,2. d dis e eis fis2 cis4 d b e a,2. \bar "|."
        }
      >> 
    }
  >>
>>
