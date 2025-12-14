\version "2.24.2"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
  }
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
        \relative c'' {
          \key d \minor
          <<
            { \voiceOne d4 d e d d bes cis a }
            \new Voice { \voiceTwo f g a a d, g a a }
          >> 
        }
      >>
      \new Staff <<
        \relative c' {
          \clef "bass"
          \key d \minor
          <<
            { \voiceOne d4 bes cis d a, g' a f \bar "|." }
            \new Voice { \voiceTwo d g a bes f, g a d \bar "|." }
          >> 
        }
      >>
    >>
  >>
}
