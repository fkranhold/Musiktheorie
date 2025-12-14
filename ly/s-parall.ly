\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \relative c'' {
          \key d \major
          <<
            { \voiceOne d4 a b cis d1 }
            \new Voice { \voiceTwo fis,4 cis d e fis1 }
          >> 
        }
      >>
      \new Staff <<
        \relative c' {
          \clef "bass"
          \key d \major
          <<
            { \voiceOne a4 a g a a1 \bar "|." }
            \new Voice { \voiceTwo d,4 cis b a d1 \bar "|." }
          >> 
        }
      >>
    >>
  >>
}
