\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new PianoStaff <<
      \new Staff <<
        \clef "bass" \relative c' {
          \key d \major
          \time 3/4
          \partial 8 {g8}
          fis16 g a g fis8 d e fis
          g16 a b a g8 e fis g
          a16 b cis b a8 fis g a
          b16 cis d cis b8 g a b
          cis16 d e d cis8 a b cis
          d8 d16 e d8 cis b a
          g16 b cis d cis8 b a g
          fis16 a b cis b8 a g fis
          e16 fis g fis e8 d cis b a8 a' r a8 d a16 a b8 a16 g fis8 g a4 d,2. \bar "|."
        }
      >>
    >>
  >>
}
