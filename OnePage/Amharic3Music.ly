\version "2.22.0"
AxBMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key as \major

}

AxBMusicRHA = \relative c'{ \AxBMusicGlobal \clef "treble"
ees8. ees16 ees8 ees4 f8 | %1
aes4 aes8 aes4. | %2
bes8. bes16 bes8 bes4 des8 | c4 c8 c4. | %4
ees8. ees16 ees8 ees4 des8 | c4 c8 c4. | %6
bes8. c16 des8 c4 bes8 | %7
aes4 g8 aes4. \cbp | %8
c \postCho ees,8. f16 ees8 | %9
\nbp aes4. aes | bes bes8. c16 des8 | %11
\nbp c4. c | ees8. ees16 ees8 ees4 des8 | %13
c4 c8 c4. | bes8. c16 des8 c4 bes8 aes4 g8 aes4. \he
}
AxBMusicRHB = \relative c'{ \AxBMusicGlobal \clef "treble"
c8. c16 c8 c4 des8 | c4 c8 c4. | %2
ees8. ees16 ees8 ees4 ees8 | %3
ees4 ees8 ees4. | %4
ees8. ees16 ees8 ees4 ees8 | %5
ees4 ees8 ees4. | %6
des8. ees16 ees8 ees4 f8 | ees4 des8 c4. | %8
ees c8. des16 c8 | c4. c | %10
ees ees8. ees16 ees8 | ees4. ees | %12
ees8. ees16 ees8 ees4 ees8 | %13
ees4 ees8 ees4. | %14
des8. ees16 ees8 ees4 f8 ees4 des8 c4.
}
AxBMusicRH = \partCombine #'(2.20) \AxBMusicRHA\AxBMusicRHB
AxBMusicLHA = \relative c{ \AxBMusicGlobal \clef "bass"
aes'8. aes16 aes8 aes4 aes8 | %1
ees4 ees8 ees4. | %2
g8. g16 g8 g4 bes8 \pcAO | %3
aes4 \pcAO aes8 \pcAO aes4. | %4
c8. c16 c8 c4 bes8 \pcAO | %5
aes4 \pcAO aes8 \pcAO aes4. | %6
f8. aes16 g8 aes4 des8 | c4 bes8 aes4. | %8
aes aes8. aes16 aes8 | ees4. ees | %10
g g8. aes16 g8 | aes4. aes | %12
c8. c16 c8 c4 bes8 \pcAO | %13
aes4 \pcAO aes8 \pcAO aes4. | %14
f8. aes16 g8 aes4 des8 c4 bes8 aes4.
}
AxBMusicLHB = \relative c{ \AxBMusicGlobal \clef "bass"
aes8. aes16 aes8 aes4 aes8 | %1
aes4 aes8 aes4. | %2
ees'8. ees16 ees8 ees4 g8 | %3
aes4 aes8 aes4. | %4
aes8. aes16 aes8 aes4 g8 | %5
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 | %7
ees4 ees8 aes,4. | aes aes8. aes16 aes8 | %9
aes4. aes | ees' ees8. ees16 ees8 | %11
aes,4. aes | aes'8. aes16 aes8 aes4 g8 | %13
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 ees4 ees8 aes,4.
}
AxBMusicLH = \partCombine #'(2.20) \AxBMusicLHA\AxBMusicLHB

AxBMusicLyrics = \relative c''''{ \AxBMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c4. c8. c16 c8 c4. c4. c4. c8. c16 c8 c4. c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4.
}


BxDGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key des \major
\partial 4.

}

BxDGMusicRHA = \relative c'{ \BxDGMusicGlobal \clef "treble"
f4 ges8 |  \nbp aes4 aes8 aes4 bes8 | %2
\nbp aes f4 \lbp f aes8 | %3
\nbp des4 ees8 des4 bes8 | %4
\nbp aes4. \lbp f4 ges8 | %5
\nbp aes4 des8 des4 bes8 | %6
aes f4 f \pcAO des8 | %7
\nbp ees2. ~ \nbp | ees4. \lbp f4 ges8 | %9
\nbp aes4 aes8 aes4 bes8 | %10
\nbp aes f4 \lbp f aes8 | %11
\nbp des4 ees8 des4 bes8 \nbp | %12

aes4. \pcAO \lbp \pcAO des,4 ees8 | %13
\nbp f aes4 aes bes8 | %14
aes f4 ees f8 \pcAp |  \nbp des2.~ \nbp | %16
des4. \pcAu \cbp aes'4 \postCho f8 | %17
\nbp aes2.~ \nbp | aes4. \lbp des4 ees8 \nbp | %19
\nbp des2.~ \nbp | des4. \lbp bes | %21
\nbp aes8 aes4 aes bes8 | %22
aes f4 f \pcAO des8 |  \nbp ees2.~ \nbp| %24
ees4. \lbp f4 ges8 | %25
\nbp aes4 aes8 aes4 bes8 | %26
\nbp aes4.~aes4 \lbp aes8 | %27
\nbp bes4 des8 des4 bes8 | %28
\nbp aes4. \pcAO \lbp des,4 ees8 | %29
\nbp f4 aes8 des4 bes8 | %30
\nbp aes f4 \lbp ees f8 \pcAp des2.~des4.  \he
}
BxDGMusicRHB = \relative c'{ \BxDGMusicGlobal \clef "treble"
des4 ees8 | f4 f8 f4 ges8 | %2
f des4 des f8 | f4 f8 ges4 ges8 | %4
f4. des4 ees8 | f4 f8 ges4 ges8 | %6
f des4 des des8 | c2.~| c4. des4 ees8 | %9
f4 f8 f4 ges8 | f des4 des f8 | %11
f4 f8 ges4 ges8 | f4. des4 des8 | %13
des f4 f ges8 | f des4 c c8 | des2.~| %16
des4. f4 des8 | f2.~| f4. f4 f8 | %19
ges2.~| ges4. ges | f8 f4 f ges8 | %22
f des4 des des8 | c2.~| c4. des4 ees8 | %25
f4 f8 f4 ges8 | f4.~f4 f8 | %27
ges4 ges8 ges4 ges8 | f4. des4 des8 | %29
des4 f8 f4 ges8 | f des4 c c8 des2.~des4.
}
BxDGMusicRH = \partCombine #'(2.20) \BxDGMusicRHA\BxDGMusicRHB
BxDGMusicLHA = \relative c{ \BxDGMusicGlobal \clef "bass"
aes'4 aes8 | des4 des8 des4 des8 | %2
des aes4 aes des8 | aes4 aes8 bes4 des8 | %4
des4. aes4 aes8 | des4 aes8 bes4 des8 | %6
des aes4 g g8 | aes2.~| %8
aes4. aes4 aes8 | des4 des8 des4 des8 | %10
des aes4 aes des8 | aes4 aes8 bes4 des8 | %12
des4. f,4 ges8 | aes des4 des des8 | %14
des aes4 ges aes8 | f2.~| f4. r4 r8 | %17
r4 r8 des'4 des8 | des4. r4 r2 bes4 bes8 | %20
bes~bes4 des4. | %21
des8 des~des des4 des8 | des aes4 g g8 | %24
aes2.~aes4. aes4 aes8 | %25
des4 des8 des4 des8 | des4.~des4 des8 | %27
des4 bes8 bes4 des8 | des4. f,4 ges8 | %29
aes4 des8 aes4 des8 | des aes4 ges aes8 f2.~f4.
}
BxDGMusicLHB = \relative c{ \BxDGMusicGlobal \clef "bass"
des4 des8 | des4 des8 des4 des8 | %2
des des4 des des8 | des4 des8 ges4 ges8 | %4
des4. des4 des8 | des4 des8 ges4 ges8 | %6
des des4 bes bes8 | aes2.~| %8
aes4. des4 des8 | des4 des8 des4 des8 | %10
des des4 des des8 | des4 des8 ges4 ges8 | %12
des4. des4 des8 | des des4 des des8 | %14
des des4 aes aes8 | des2.~| %16
des4. r4 r8 | r4 r8 des4 des8 | %19
des4. r4 r2 ges4 ges8 | ges~ges4 ges4. | %21
des8 des~des des4 des8 | %22
des des4 bes bes8 | %24
aes2.~aes4. des4 des8 | %25
des4 des8 des4 des8 | des4.~des4 des8 | %27
ges4 ges8 ges4 ges8 | des4. des4 des8 | %29
des4 des8 des4 des8 | des des4 aes aes8 des2.~des4.
}
BxDGMusicLH = \partCombine #'(2.20) \BxDGMusicLHA\BxDGMusicLHB

BxDGMusicLyrics = \relative c''''{ \BxDGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c2. ct4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c8 c4 c4 c8 c8 c4 c4 c8 c2. ct4. c4 c8 c2. ct4. c4 c8 c2. ct4. c4. c8 c4 c4 c8 c8 c4 c4 c8 c2. ct4. c4 c8 c4 c8 c4 c8 c4. ct4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c8 c2. ct4.
}


CxFZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \key f \major
\time 3/4
}

CxFZMusicRHA = \relative c'{ \CxFZMusicGlobal \clef "treble"
a'4 a a | a4. g8 g4 | g a bes | %3
\nbp a2. | c4 c c | c4. b8 b4 | b c d | %7
\nbp c2 (bes4) \breathe | a bes c | %9
d4. g,8 g4 \breathe | g a bes | %11
c4. f,8 f4 \breathe | f g a | %13
bes4. d,8 d4 \breathe | e f g \nbp f2. \he
}
CxFZMusicRHB = \relative c'{ \CxFZMusicGlobal \clef "treble"
f4 f f | f4. e8 e4 | e f e | f2. | %4
f4 f f | f4. f8 f4 | f e f | e (f g) | %8
f f f | f4. d8 d4 | e e e | e4. d8 d4 | %12
d d d | d4. bes8 bes4 | c c e c2.
}
CxFZMusicRH = \partCombine #'(2.20) \CxFZMusicRHA\CxFZMusicRHB
CxFZMusicLHA = \relative c{ \CxFZMusicGlobal \clef "bass"
c'4 c c | c4. c8 c4 | c c c | c2. | %4
c4 c c | d4. d8 d4 | d c b | c2. | %8
c4 bes a | bes4. bes8 bes4 | bes a g | %11
a4. a8 a4 | a g fis | g4. g8 g4 | %14
g a bes a2.
}
CxFZMusicLHB = \relative c{ \CxFZMusicGlobal \clef "bass"
f4 f f | c4. c8 c4 | c c c | f2. | %4
a4 a a | g4. g8 g4 | g g g | c, (d e) | %8
f d c | bes4. bes8 bes4 | c c c | %11
a4. d8 d4 | c bes a | g4. g8 g4 | c c c f2.
}
CxFZMusicLH = \partCombine #'(2.20) \CxFZMusicLHA\CxFZMusicLHB

CxFZMusicLyrics = \relative c''''{ \CxFZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 ct4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2.
}


DxHDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key bes \major
\partial 4

}

DxHDMusicRHA = \relative c'{ \DxHDMusicGlobal \clef "treble"

}
DxHDMusicRHB = \relative c'{ \DxHDMusicGlobal \clef "treble"

}
DxHDMusicRH = \partCombine #'(2.20) \DxHDMusicRHA\DxHDMusicRHB
DxHDMusicLHA = \relative c{ \DxHDMusicGlobal \clef "bass"

}
DxHDMusicLHB = \relative c{ \DxHDMusicGlobal \clef "bass"

}
DxHDMusicLH = \partCombine #'(2.20) \DxHDMusicLHA\DxHDMusicLHB

DxHDMusicLyrics = \relative c''''{ \DxHDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c4 c4 c8 c8 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c4 c4 c8 c8 c8 c8 c4. c8 c2
}


ExHDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key bes \major
\partial 4

}

ExHDMusicRHA = \relative c'{ \ExHDMusicGlobal \clef "treble"

}
ExHDMusicRHB = \relative c'{ \ExHDMusicGlobal \clef "treble"

}
ExHDMusicRH = \partCombine #'(2.20) \ExHDMusicRHA\ExHDMusicRHB
ExHDMusicLHA = \relative c{ \ExHDMusicGlobal \clef "bass"

}
ExHDMusicLHB = \relative c{ \ExHDMusicGlobal \clef "bass"

}
ExHDMusicLH = \partCombine #'(2.20) \ExHDMusicLHA\ExHDMusicLHB

ExHDMusicLyrics = \relative c''''{ \ExHDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c4 c4 c8 c8 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c4 c4 c8 c8 c8 c8 c4. c8 c2
}


FxHMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key es \major
\partial 4.

}

FxHMusicRHA = \relative c'{ \FxHMusicGlobal \clef "treble"
bes'8 bes aes | g4. aes8 bes c | %2
\nbp bes4. \pcAO \lbp ees,8 g bes | %3
bes4. g8 g f |  \nbp f4. \lbp g8 aes bes | %5
c4. ees8 d c | %6
\nbp bes4. \lbp ees8 ees g, | %7
bes4. \pcAO ees,8 g f \pcAO | %8
\nbp ees4. \cbp g8 \postCho f aes | %9
aes4. f8 aes g | %10
\nbp g4. \lbp bes8 bes g | %11
g4. \pcAO ees8 g f | %12
\nbp f4. \lbp g8 aes bes | c4. ees8 d c | %14
\nbp bes4. \lbp ees8 ees g, | %15
bes4. \pcAO ees,8 g f \pcAO \nbp ees4. \he
}
FxHMusicRHB = \relative c'{ \FxHMusicGlobal \clef "treble"
g'8 g f | ees4. f8 g aes | %2
g4. ees8 ees g | f4. ees8 ees d | %4
d4. ees8 d ees | ees4. ees8 ees ees | %6
g4. g8 g ees | ees4. ees8 ees d | %8
ees4. ees8 d f | f4. d8 f ees | %10
ees4. g8 g ees | ees4. ees8 ees d | %12
d4. ees8 d ees | ees4. ees8 f aes | %14
g4. g8 g ees | g4. ees8 ees d ees4.
}
FxHMusicRH = \partCombine #'(2.20) \FxHMusicRHA\FxHMusicRHB
FxHMusicLHA = \relative c{ \FxHMusicGlobal \clef "bass"
bes'8 bes bes | bes4. bes8 bes bes | %2
ees4. g,8 bes ees | d4. bes8 bes bes | %4
bes4. bes8 bes bes \pcAO | %5
aes4. c8 bes c | ees4. bes8 bes bes | %7
g4. g8 bes aes | g4. r4 bes8 | %9
bes bes bes r4 bes8 | %10
bes bes bes ees ees bes | %11
bes bes bes r4 bes8 | %12
bes bes bes bes bes bes \pcAO | %13
aes \pcAO aes \pcAO aes r4 ees'8 | %14
ees ees ees r4 ees8 | %15
ees bes bes g bes aes g4.
}
FxHMusicLHB = \relative c{ \FxHMusicGlobal \clef "bass"
ees8 ees ees | ees4. ees8 ees ees | %2
ees4. ees8 ees ees | bes4. bes8 bes bes | %4
bes4. ees8 f g | aes4. aes8 aes aes | %6
ees4. ees8 ees ees | ees4. ees8 bes bes | %8
ees4. r4 bes8 | bes bes bes r4 ees8 | %10
ees ees ees ees ees ees | %11
ees ees ees r4 bes8 | bes bes bes ees f g | %13
aes aes aes r4 aes8 | ees ees ees r4 ees8 | %15
ees ees ees ees bes bes ees4.
}
FxHMusicLH = \partCombine #'(2.20) \FxHMusicLHA\FxHMusicLHB

FxHMusicLyrics = \relative c''''{ \FxHMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}


GxEAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key g \major

}

GxEAMusicRHA = \relative c'{ \GxEAMusicGlobal \clef "treble"
\pcAO d2 \pcAO d4 g | b2 g4 b | %2
b (a) e fis \pcAO | %3
\nbp g2 \pcAO \lbp d4 \pcAO d \pcAO | %4
\nbp d2 g4 b | d2 b4 b | b2 a4 g | \nbp %7
a2. \lbp  \pcAO d,4 |  \nbp d2 d4 g | b2 g4 b | %10
b (a) e fis |  \nbp g2 \lbp d4 g | %12
\nbp g2 fis4 e \pcAO | d2 g4 a | %14
b2 a4 a \nbp | g2. \cbp  b4 \postCho |  \nbp d2 d4 e | %17
\nbp d2 \lbp b4 b |  \nbp b2 b4 c | %19
\nbp b2 \lbp a4 g |  \nbp g2 fis4 e | %21
\nbp d2 \lbp \fpre g4 \fpost g | g (fis) e fis g1 \he
}
GxEAMusicRHB = \relative c'{ \GxEAMusicGlobal \clef "treble"
d2 d4 d | g2 d4 d | d (c) c c | %3
g'2 d4 d | d2 d4 g | g2 g4 g | %6
g2 d4 cis | d2. d4 | b2 b4 b | d2 b4 d | %10
c2 c4 c | b2 b4 b | e2 d4 c | %13
d2 cis4 cis | d2 fis4 fis | d2. g4 | %16
g2 g4 g | g2 g4 g | g2 g4 g | g2 fis4 e | %20
e2 d4 c | b2 d4 d | c2 c4 c b1
}
GxEAMusicRH = \partCombine #'(2.20) \GxEAMusicRHA\GxEAMusicRHB
GxEAMusicLHA = \relative c{ \GxEAMusicGlobal \clef "bass"
b'2 b4 b | d2 b4 \pcAO g | fis2 a4 a | %3
b2 b4 b | b2 b4 d | b2 d4 d | %6
d2 \pcAO fis,4 a | fis2. fis4 | g2 g4 g | %9
g2 g4 g | fis2 a4 a | g2 g4 g | g2 g4 g | %13
b2 g4 g | g2 c4 c | b2. d4 | b2 b4 c | %17
b2 d4 d | d2 d4 e | d2 c4 b | c2 g4 g | %21
g2 b4 b | a2 g4 a g1
}
GxEAMusicLHB = \relative c{ \GxEAMusicGlobal \clef "bass"
g'2 g4 g | g2 g4 g | d2 d4 d | g2 g4 g | %4
g2 g4 g | g2 g4 g | g2 fis4 e | d2. d4 | %8
g,2 g4 g | g2 g4 g | d'2 d4 d | %11
g,2 g4 g | c2 c4 c | g'2 e4 e | d2 d4 d | %15
g2. g4 | g2 g4 g | g2 g4 g | g2 g4 g | %19
g2 d4 e | c2 c4 c | d2 \fpre d4 \fpostbelow d | d2 d4 d g,1
}
GxEAMusicLH = \partCombine #'(2.20) \GxEAMusicLHA\GxEAMusicLHB

GxEAMusicLyrics = \relative c''''{ \GxEAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c4 ct4 c4 c4 c1
}


HxBADMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major

}

HxBADMusicRHA = \relative c'{ \HxBADMusicGlobal \clef "treble"
g'4. aes8 bes4 ees | d c bes2 \pcAO | %2
ees,4. f8 g4 bes | aes g f2 | %4
g4. aes8 bes4 ees | d c bes2 \pcAO | %6
ees,4. f8 g4 aes g f \pcAO ees2 \he
}
HxBADMusicRHB = \relative c'{ \HxBADMusicGlobal \clef "treble"
ees4. f8 g4 ees | ees ees ees2 | %2
ees4. d8 ees4 ees | d ees d2 | %4
ees4. d8 ees4 g | f f8 [ees] d2 | %6
ees4. d8 ees4 ees ees d ees2
}
HxBADMusicRH = \partCombine #'(2.20) \HxBADMusicRHA\HxBADMusicRHB
HxBADMusicLHA = \relative c{ \HxBADMusicGlobal \clef "bass"
bes'4. bes8 ees4 c | bes aes g2 | %2
bes4. aes8 bes4 bes | bes bes bes2 | %4
bes4. aes8 \pcAO g4 bes | bes a bes2 | %6
bes4. aes8 bes4 c bes aes g2
}
HxBADMusicLHB = \relative c{ \HxBADMusicGlobal \clef "bass"
ees4. ees8 ees4 ees | ees ees ees2 | %2
g4. f8 ees4 g | f ees bes2 | %4
ees4. f8 g4 ees | f f bes,2 | %6
g'4. f8 ees4 aes, bes bes ees2
}
HxBADMusicLH = \partCombine #'(2.20) \HxBADMusicLHA\HxBADMusicLHB

HxBADMusicLyrics = \relative c''''{ \HxBADMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c8 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c2
}


IxBCZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key bes \major

}

IxBCZMusicRHA = \relative c'{ \IxBCZMusicGlobal \clef "treble"

}
IxBCZMusicRHB = \relative c'{ \IxBCZMusicGlobal \clef "treble"

}
IxBCZMusicRH = \partCombine #'(2.20) \IxBCZMusicRHA\IxBCZMusicRHB
IxBCZMusicLHA = \relative c{ \IxBCZMusicGlobal \clef "bass"

}
IxBCZMusicLHB = \relative c{ \IxBCZMusicGlobal \clef "bass"

}
IxBCZMusicLH = \partCombine #'(2.20) \IxBCZMusicLHA\IxBCZMusicLHB

IxBCZMusicLyrics = \relative c''''{ \IxBCZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c8 c8 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4 c8 c4. c8 c8 c8 c4 c8 c2. c4. c4 c8 c4 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c4. c4 c8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c8 c2.
}


AZxBCAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key d \major

}

AZxBCAMusicRHA = \relative c'{ \AZxBCAMusicGlobal \clef "treble"
a'8 b a fis4 a8 | g4. g4 r8 | %2
g a g e4 g8 |  \nbp fis4.~fis4 r8 | %4
fis g fis \pcAO d4 fis8 | e4. e4 r8 | %6
e fis g fis4 e8 |  \nbp fis4.~fis4 r8 | %8
a b a fis4 a8 | g4. g4 r8 | g a g e4 g8 | %11
\nbp fis4.~fis4 r8 | %12
fis g fis \pcAO d4 fis8 | e4. e4 r8 | %14
e fis g fis4 e8 \pcAp | %15
\nbp d4.~d4 \pcAu r8 \break \repeat volta 2 {| %16
a' \postCho b cis d4 d8 | cis4. g4 r8 | %18
g a b cis4 b8 |  \nbp a4.~a4 r8 | %20
fis g a b4 fis8 | a4. g4 r8 | %22
e fis g fis4} \alternative {{e8 | %23
\nbp fis4.~fis} {\set Timing.measureLength = # (ly:make-moment 1 8) e8 \pcAp \set Timing.measureLength = # (ly:make-moment 6 8) d4.~d \pcAu \he}}
}
AZxBCAMusicRHB = \relative c'{ \AZxBCAMusicGlobal \clef "treble"
fis8 g fis d4 d8 | cis4. cis4 r8 | %2
e fis e cis4 e8 | d4.~d4 r8 | %4
d d d d4 d8 | d4. d4 r8 | %6
cis d e d4 cis8 | d4.~d4 r8 | %8
fis g fis d4 d8 | cis4. cis4 r8 | %10
e fis e cis4 e8 | d4.~d4 r8 | %12
d d d d4 d8 | d4. d4 r8 | %14
cis d e d4 cis8 | d4.~d4 r8 | %16
fis fis fis fis4 fis8 | g4. cis,4 r8 | %18
e fis g g4 g8 | fis4.~fis4 r8 | %20
d e d dis4 dis8 | fis4. e4 r8 | %22
cis d e d4 cis8 | d4.~d cis8 d4.~d
}
AZxBCAMusicRH = \partCombine #'(2.20) \AZxBCAMusicRHA\AZxBCAMusicRHB
AZxBCAMusicLHA = \relative c{ \AZxBCAMusicGlobal \clef "bass"
d'8 d d a4 a8 | a4. a4 r8 | a a a a4 a8 | %3
a4.~a4 r8 | a b a fis4 a8 | b4. b4 r8 | %6
a a a a4 a8 | a4.~a4 r8 | d d d a4 a8 | %9
a4. a4 r8 | a a a a4 a8 | a4.~a4 r8 | %12
a b a fis4 a8 | b4. b4 r8 | a a a a4 g8 | %15
fis4.~fis4 r8 | a a a a4 a8 | %17
a4. a4 r8 | a a a a b cis | d4.~d4 r8 | %20
a a fis fis4 b8 | b4. b4 r8 | %22
a a a a4 a8 | a4.~a g8 fis4.~fis
}
AZxBCAMusicLHB = \relative c{ \AZxBCAMusicGlobal \clef "bass"
d8 d d d4 fis8 | e4. e4 r8 | %2
a, a a a4 a8 | d4.~d4 r8 | d d d d4 d8 | %5
g,4. g4 r8 | a a a a4 a8 | d4.~d4 r8 | %8
d d d d4 fis8 | e4. e4 r8 | a, a a a4 a8 | %11
d4.~d4 r8 | d d d d4 d8 | g,4. g4 r8 | %14
a a a a4 a8 | d4.~d4 r8 | d d d d4 d8 | %17
e4. e4 r8 | a, a a a4 a8 | d4.~d4 r8 | %20
d d d b4 b8 | e4. e4 r8 | a, a a a4 a8 | %23
d4.~d a8 d4.~d
}
AZxBCAMusicLH = \partCombine #'(2.20) \AZxBCAMusicLHA\AZxBCAMusicLHB

AZxBCAMusicLyrics = \relative c''''{ \AZxBCAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c\ParAltStart c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c\ParAltFirst c8 c4. ct4. c\ParAltSecond c8 c2. c\ParAltEnd
}


AAxBFFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major

}

AAxBFFMusicRHA = \relative c'{ \AAxBFFMusicGlobal \clef "treble"
g'2 g4 aes | bes2. ees,4 | d2 f | %3
\nbp ees1 | g2 aes4 bes | c2 f, | %6
\nbp f1 | d'2 c4 bes | ees2. bes4 | %9
aes2 bes |  \nbp g1 | bes2 aes4 f \pcAO | %12
c2 d \nbp ees1 \he
}
AAxBFFMusicRHB = \relative c'{ \AAxBFFMusicGlobal \clef "treble"
ees2 ees4 d | ees2. bes4 | bes2 bes | %3
bes1 | ees2 d4 ees | ees2 ees | d1 | %7
f2 f4 f | ees2. ees4 | ees2 d | ees1 | %11
des2 c4 c | c2 bes bes1
}
AAxBFFMusicRH = \partCombine #'(2.20) \AAxBFFMusicRHA\AAxBFFMusicRHB
AAxBFFMusicLHA = \relative c{ \AAxBFFMusicGlobal \clef "bass"
bes'2 bes4 bes | bes2. g4 | f2 aes | g1 | %4
bes2 bes4 bes \pcAO | aes2 c \pcAO | %6
bes1 | bes2 bes4 bes | bes2. bes4 | %9
c2 bes | bes1 | ees,2 ees4 f | %12
aes (g) f (aes) g1
}
AAxBFFMusicLHB = \relative c{ \AAxBFFMusicGlobal \clef "bass"
ees2 ees4 f | g2. bes,4 | bes2 bes | %3
ees1 | ees2 f4 g | aes2 a | bes1 | %7
aes2 aes4 aes | g2. g4 | f2 bes, | ees1 | %11
g,2 aes4 aes | aes2 bes ees1
}
AAxBFFMusicLH = \partCombine #'(2.20) \AAxBFFMusicLHA\AAxBFFMusicLHB

AAxBFFMusicLyrics = \relative c''''{ \AAxBFFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1 c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1
}


ABxBGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major
\partial 4

}

ABxBGMusicRHA = \relative c'{ \ABxBGMusicGlobal \clef "treble"
g'4 |  \nbp g g aes g | %2
\nbp g2 f4 \pcAO \lbp ees | %3
\nbp ees c' bes aes | %4
\nbp g2. \lbp aes4 | %5
\nbp bes ees ees d | %6
\nbp d2 c4 \lbp bes | %7
\nbp aes bes g \pcAO ees | %8
\nbp f2. \lbp f4 |  \nbp g aes bes c | %10
\nbp c2 bes4 \lbp ees | %11
\nbp ees4. d8 c4 \pcAO g | %12
\nbp aes2. \pcAO \lbp f4 | %13
\nbp g g aes g |  \nbp g2 f4 \lbp ees | %15
\nbp ees f ees d \nbp ees2. \he
}
ABxBGMusicRHB = \relative c'{ \ABxBGMusicGlobal \clef "treble"
ees4 | ees ees ees ees | ees2 d4 ees | %3
c ees ees d | ees2. d4 | ees ees ees f | %6
f2 ees4 g | ees f ees ees | d2. d4 | %9
ees d ees ees | ees2 ees4 g | %11
g4. g8 g4 g | f2. f4 | ees ees ees ees | %14
c2 c4 c | c c c bes bes2.
}
ABxBGMusicRH = \partCombine #'(2.20) \ABxBGMusicRHA\ABxBGMusicRHB
ABxBGMusicLHA = \relative c{ \ABxBGMusicGlobal \clef "bass"
bes'4 | bes bes c bes | bes2 bes4 bes | %3
f f g bes | bes2. bes4 | bes bes b b | %6
b2 c4 d | ees d bes a | bes2. bes4 | %9
bes bes bes \pcAO aes \pcAO | %10
aes2 bes4 c | c4. b8 c4 c | c2. bes4 | %13
bes bes c bes | bes2 aes4 aes | %15
aes aes f aes g2.
}
ABxBGMusicLHB = \relative c{ \ABxBGMusicGlobal \clef "bass"
ees4 | ees ees ees ees | bes2 aes4 g | %3
aes aes bes bes | ees2. f4 | g g g g, | %6
aes2 aes4 bes | c d ees c | bes2. bes4 | %9
ees f g aes | aes2 g4 c, | %11
g'4. f8 ees4 e | f2. d4 | %13
ees ees ees ees | aes,2 aes4 aes | %15
f f bes bes ees2.
}
ABxBGMusicLH = \partCombine #'(2.20) \ABxBGMusicLHA\ABxBGMusicLHB

ABxBGMusicLyrics = \relative c''''{ \ABxBGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4. c8 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2.
}


ACxAFIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key d \major
\partial 8

}

ACxAFIMusicRHA = \relative c'{ \ACxAFIMusicGlobal \clef "treble"
a'8 |  \nbp a4. g8 fis4. fis8 | %2
fis g a b b4 \fpre a8  \fpost \lbp g | %3
\nbp g4. fis8 e4. d8 | %4
cis d e e a4. \lbp a8 | %5
\nbp a4. g8 fis4. fis8 | %6
fis g a b b4 \fpre a8 \fpost \lbp a | %7
\nbp d d cis b a4 \fpre fis8 \fpost b | %8
a4 g8 e \pcAO d2 \cbp | %9
e8 \postCho e e fis g2 | %10
fis8 fis fis g a4. \lbp a8 | %11
\nbp d d cis b a4 fis8 \lbp b \nbp a4 g8 e \pcAO \fpre d4. \fpost \he
}
ACxAFIMusicRHB = \relative c'{ \ACxAFIMusicGlobal \clef "treble"
d8 | d4. d8 d4. d8 | d d d d d4 d8 cis | %3
cis4. d8 cis4. a8 | a a cis cis cis4. d8 | %5
d4. d8 d4. d8 | d d d d f4 fis8 d | %7
d d d d d4 d8 d | d4 cis8 cis d2 | %9
cis8 cis cis d e2 | d8 d d cis d4. d8 | %11
d d d d d4 d8 d d4 cis8 cis d4.
}
ACxAFIMusicRH = \partCombine #'(2.20) \ACxAFIMusicRHA\ACxAFIMusicRHB
ACxAFIMusicLHA = \relative c{ \ACxAFIMusicGlobal \clef "bass"
fis8 | fis4. b8 a4. a8 | %2
a e fis g g4 fis8 e | e4. a8 a4. fis8 | %4
e fis a a g4. fis8 | fis4. b8 a4. a8 | %6
a e fis g gis4 a8 a | %7
b b a \pcAO g fis4 a8 g | fis4 e8 g fis2 | %9
a8 a a a a2 | a8 a a a a4. a8 | %11
b b a \pcAO g fis4 a8 g fis4 e8 g fis4.
}
ACxAFIMusicLHB = \relative c{ \ACxAFIMusicGlobal \clef "bass"
d8 | d4. d8 d4. d8 | d d d d d4 \fpre d8 \fpostbelow a | %3
a4. a8 a4. a8 | a a a a a4. d8 | %5
d4. d8 d4. d8 | d d d d d4 \fpre d8 \fpostbelow fis | %7
g g g g d4 \fpre d8 \fpostbelow  g, | a4 a8 a d2 | %9
a8 a e' d cis2 | d8 d d e fis4. fis8 | %11
g g g g d4 d8 g, a4 a8 a \fpre d4. \fpostbelow
}
ACxAFIMusicLH = \partCombine #'(2.20) \ACxAFIMusicLHA\ACxAFIMusicLHB

ACxAFIMusicLyrics = \relative c''''{ \ACxAFIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c4. c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c4. c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c4 c8 c8 c4 c8 c8 c2 c8 c8 c8 c8 c2 c8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c4 c8 c8 c4.
}


ADxABEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key des \major

}

ADxABEMusicRHA = \relative c'{ \ADxABEMusicGlobal \clef "treble"
f2 f4 f | aes2 aes \pcAO | %2
des, ges4 ges |  \nbp f2. r4 | %4
bes2 bes4 bes | aes2 f4 f | f2 ees4 ees | %7
\nbp ees2. r4 | f2 f4 f | aes2 aes | %10
bes c4 des |  \nbp c2. r4 | des2 c4 bes | %13
aes2 f4 aes | aes2 aes4. ges8 | %15
\nbp f2. r4 | bes2 c4 des | %17
des2 \pcAO des,4 ees | %18
f2 f4. ees8 \pcAO \nbp des2. r4 \he
}
ADxABEMusicRHB = \relative c'{ \ADxABEMusicGlobal \clef "treble"
des2 des4 des | ees2 ees | des des4 des | %3
des2. r4 | des2 ges4 ges | f2 des4 des | %6
des2 bes4 des | c2. r4 | des2 des4 des | %9
ees2 f | ges ges4 f | ees2. r4 | %12
aes2 aes4 ges | f2 des4 des | c2 c4. c8 | %15
des2. r4 | ges2 ges4 ges | f2 des4 des | %18
des2 c4. c8 des2. r4
}
ADxABEMusicRH = \partCombine #'(2.20) \ADxABEMusicRHA\ADxABEMusicRHB
ADxABEMusicLHA = \relative c{ \ADxABEMusicGlobal \clef "bass"
aes'2 aes4 aes | aes2 ees | f bes4 bes | %3
aes2. r4 | ges (bes) des des | %5
des2 aes4 aes | bes2 g4 g | aes2. r4 | %8
aes2 aes4 aes | aes2 des | %10
des aes4 aes \pcAO | aes2. r4 | %12
aes (des) des des | des2 aes4 f | %14
ees2 ees4. aes8 | aes2. r4 | des2 c4 bes | %17
aes2 g4 g | aes2 aes4. ges8 f2. r4
}
ADxABEMusicLHB = \relative c{ \ADxABEMusicGlobal \clef "bass"
des2 des4 des | c2 c | %2
bes ges4 ges8 [bes] | des2. r4 | %4
ges2 ges4 ges | des2 des4 des | %6
bes2 ees4 ees | aes,2. r4 | %8
des2 des4 des | c2 des | ges ees4 des | %11
aes'2. r4 | f2 ges4 ges | des2 des4 des | %14
aes2 aes4. aes8 | des2. r4 | %16
ges,2 ges4 ges | aes2 beses4 beses | %18
aes2 aes4. aes8 des2. r4
}
ADxABEMusicLH = \partCombine #'(2.20) \ADxABEMusicLHA\ADxABEMusicLHB

ADxABEMusicLyrics = \relative c''''{ \ADxABEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2 c2 c2 c4 c4 c2. cr4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. cr4 c2 c4 c4 c2 c2 c2 c4 c4 c2. cr4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2. cr4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2.
}


AExFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key es \major
\partial 4

}

AExFMusicRHA = \relative c'{ \AExFMusicGlobal \clef "treble"
ees4 | g (aes) f \pcAO | ees2 g4 | %3
bes2 c4 |  \nbp bes2 \lbp bes4 | %5
\nbp ees2 d4 | c2 bes4 | bes (aes) g | %8
g (\fpre f) \fpost \lbp f |  \nbp bes2 c4 | %10
d2 bes4 | ees (g,) a | %12
\nbp bes2 \pcAO \lbp ees,4 | %13
\nbp aes2 g4 | f2 \pcAO ees4 | %15
ees8 ([f] g4) f \pcAO \nbp ees2 \he
}
AExFMusicRHB = \relative c'{ \AExFMusicGlobal \clef "treble"
bes4 | ees2 d4 | ees2 ees4 | ees2 ees4 | %4
ees2 f4 | ees2 g4 | ees2 ees4 | f2 ees4 | %8
ees (d) d | f2 f4 | f2 g4 | g2 f4 | %12
d2 ees4 | c (d) ees | d2 ees4 | %15
ees2 d4 ees2
}
AExFMusicRH = \partCombine #'(2.20) \AExFMusicRHA\AExFMusicRHB
AExFMusicLHA = \relative c{ \AExFMusicGlobal \clef "bass"
g'4 | bes (c) bes | g2 c4 | bes2 aes4 | %4
g2 bes4 | g2 g4 | aes2 g4 | bes2 bes4 | %8
bes2 bes4 | bes2 a4 \pcAO | bes2 d4 | %11
ees2 c4 | bes2 bes4 | aes2 bes4 | %14
bes (aes) g | c (bes) aes g2
}
AExFMusicLHB = \relative c{ \AExFMusicGlobal \clef "bass"
ees4 | ees (aes,) bes | c2 c4 | %3
g2 aes4 | ees'2 d4 | c2 bes4 | %6
aes2 ees'4 | d2 ees4 | \fpre bes2 \fpostbelow bes4 | %9
d2 f4 | bes2 g4 | c,2 f4 | bes,2 g'4 | %13
f2 ees4 | bes2 c4 | aes (bes) bes ees2
}
AExFMusicLH = \partCombine #'(2.20) \AExFMusicLHA\AExFMusicLHB

AExFMusicLyrics = \relative c''''{ \AExFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2
}


AFxBGIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/2
\key es \major

}

AFxBGIMusicRHA = \relative c'{ \AFxBGIMusicGlobal \clef "treble"
g'2 g g | aes1 g2 \pcAO | f1 f2 | %3
\nbp f1. | bes2 bes aes | g1 ees'2 | %6
ees (d) c |  \nbp bes1. | bes2 c bes | %9
ees1 d2 | d (c) bes | %11
\nbp aes1 \lbp g2 |  \nbp f1 ees2 | %13
aes1 g2 | f (c) d \nbp ees1. \he
}
AFxBGIMusicRHB = \relative c'{ \AFxBGIMusicGlobal \clef "treble"
ees2 ees ees | ees1 ees2 | f1 c2 | d1. | %4
d2 ees f | ees1 g2 | g (f) ees | d1. | %8
f2 f f | ees1 ees2 | ees1 ees2 | %11
ees (d) ees | d1 c2 | f1 ees2 | %14
c1 bes2 bes1.
}
AFxBGIMusicRH = \partCombine #'(2.20) \AFxBGIMusicRHA\AFxBGIMusicRHB
AFxBGIMusicLHA = \relative c{ \AFxBGIMusicGlobal \clef "bass"
bes'2 bes bes | c1 bes2 | c1 f,2 | %3
bes1. | bes2 bes bes | bes1 bes2 | %6
a1 a2 | bes1. | d2 c d | %9
bes1 bes2 \pcAO | aes1 bes2 | bes1 bes2 | %12
aes1 g2 | bes1 bes2 | aes1 f2 g1.
}
AFxBGIMusicLHB = \relative c{ \AFxBGIMusicGlobal \clef "bass"
ees2 ees ees | ees1 ees2 | aes,1 a2 | %3
bes1. | bes2 c d | ees1 c2 | f1 f2 | %7
bes,1. | aes'2 aes aes | g1 g2 | %10
aes1 g2 | f1 ees2 | bes1 c2 | d1 ees2 | %14
aes, (f) bes ees1.
}
AFxBGIMusicLH = \partCombine #'(2.20) \AFxBGIMusicLHA\AFxBGIMusicLHB

AFxBGIMusicLyrics = \relative c''''{ \AFxBGIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c2 c2 c1 c2 c1 c2 c1. c2 c2 c2 c1 c2 c2 c2 c2 c1. c2 c2 c2 c1 c2 c2 c2 c2 c1 c2 c1 c2 c1 c2 c2 c2 c2 c1.
}


AGxHEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key e \major
\partial 4

}

AGxHEMusicRHA = \relative c'{ \AGxHEMusicGlobal \clef "treble"
gis'8. a16 |  \nbp b4. gis8 e'8. cis16 | %2
\nbp b4 gis \lbp cis8. b16 | %3
\nbp fis4. gis8 b8. a16 | %4
\nbp gis2 \fb gis8. a16 | %5
\nbp b4. gis8 e'8. cis16 | %6
\nbp b4 gis \lbp e'8. e16 | %7
\nbp dis4. cis8 b8. ais16 | %8
\nbp b2 \cfb b8. \postCho b16 | %9
\nbp b4. a8 gis8. fis16 | %10
\nbp gis2 \lbp e'8. dis16 | %11
\nbp cis4. e8 dis8. cis16 | %12
\nbp b2 \lbp b8. b16 | %13
\nbp e4. gis,8 a8. b16 | %14
\nbp dis4 cis \lbp a8. fis16 | %15
\nbp e4 gis \fpre gis8. \fpost fis16 \nbp e2 \he
}
AGxHEMusicRHB = \relative c'{ \AGxHEMusicGlobal \clef "treble"
e8. fis16 | gis4. e8 gis8. a16 | %2
gis4 e e8. e16 | dis4. e8 dis8. fis16 | %4
e2 e8. fis16 | gis4. e8 a8. a16 | %6
gis4 e gis8. gis16 | fis4. fis8 fis8. e16 | %8
dis2 dis8. dis16 | dis4. fis8 e8. dis16 | %10
e2 gis8. b16 | a4. cis8 b8. a16 | %12
gis2 gis8. gis16 | gis4. e8 dis8. e16 | %14
e4 e e8. cis16 | b4 e dis8. b16 b2
}
AGxHEMusicRH = \partCombine #'(2.20) \AGxHEMusicRHA\AGxHEMusicRHB
AGxHEMusicLHA = \relative c{ \AGxHEMusicGlobal \clef "bass"
b'8. b16 | e4. b8 b8. e16 | %2
e4 b a8. gis16 | b4. b8 b8. b16 | %4
b2 b8. b16 | e4. b8 cis8. e16 | %6
e4 b cis8. cis16 | b4. e8 dis8. cis16 | %8
b2 fis8. fis16 | fis4. b8 b8. b16 | %10
b2 b8. e16 | e4. e8 e8. e16 | e2 e8. e16 | %13
b4. b8 b8. b16 \pcAO | %14
a4 \pcAO a cis8. a16 | gis4 b b8. a16 gis2
}
AGxHEMusicLHB = \relative c{ \AGxHEMusicGlobal \clef "bass"
e8. e16 | e4. e8 e8. e16 | e4 e e8. e16 | %3
b4. b8 b8. dis16 | e2 e8. e16 | %5
e4. e8 e8. e16 | e4 e cis8. cis16 | %7
fis4. fis8 fis8. fis16 | b,2 b8. b16 | %9
b4. b8 b8. b16 | e2 e8. e16 | %11
a4. a8 a8. a16 | e2 e8. e16 | %13
e4. e8 fis8. gis16 | a4 a a,8. a16 | %15
b4 b \fpre b8. \fpostbelow b16 e2
}
AGxHEMusicLH = \partCombine #'(2.20) \AGxHEMusicLHA\AGxHEMusicLHB

AGxHEMusicLyrics = \relative c''''{ \AGxHEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c2
}


AHxICMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 12/8
\key g \major
\partial 8*3

}

AHxICMusicRHA = \relative c'{ \AHxICMusicGlobal \clef "treble"
g'4 a8 |  \nbp b4. a4 g8 a4. g4 e8 | %2
\nbp d1 r8 \lbp g4 a8 | %3
\nbp b4. b4 b8 d4. d4 b8 | %4
\nbp a1 r8 \lbp g4 a8 | %5
\nbp b4. a4 g8 a4. g4 e8 | %6
\nbp d1 r8 \lbp g4 a8 | %7
\nbp b4. a4 g8 a4. g4 fis8 | %8
\nbp g1 r8 \cbp b4 \postCho c8 | %9
\nbp d2.~d4. d4 d8 | %10
\nbp a2.~a4. \lbp a4 b8 | %11
\nbp c4. c4 c8 c4. b4 a8 | %12
\nbp b2.~b4. \lbp b4 c8 | %13
\nbp d2.~d4. b4 a8 | %14
\nbp g2.~g4. \lbp fis4 e8 | %15
\nbp d4. g4 b8 a4. g4 fis8 \nbp g2.~g4. \he
}
AHxICMusicRHB = \relative c'{ \AHxICMusicGlobal \clef "treble"
d4 d8 | g4. d4 d8 e4. e4 c8 | %2
b1 r8 d4 d8 | d4. d4 d8 g4. g4 d8 | %4
d1 r8 d4 d8 | g4. d4 d8 e4. e4 c8 | %6
b1 r8 d4 d8 | d4. d4 d8 e4. d4 d8 | %8
d1 r8 g4 a8 | b2.~b4. b4 g8 | %10
fis2.~fis4. fis4 g8 | %11
fis4. fis4 fis8 fis4. g4 fis8 | %12
g2.~g4. g4 a8 | b2.~b4. g4 d8 | %14
e2.~e4. d4 c8 | b4. d4 d8 d4. d4 d8 d2.~d4.
}
AHxICMusicRH = \partCombine #'(2.20) \AHxICMusicRHA\AHxICMusicRHB
AHxICMusicLHA = \relative c{ \AHxICMusicGlobal \clef "bass"
b'4 c8 | d4. d4 d8 c4. g4 g8 | %2
g1 r8 g4 fis8 \pcAO | %3
g4. \pcAO g4 \pcAO g8 b4. b4 \pcAO g8 | %4
fis1 r8 b4 c8 | d4. d4 d8 c4. g4 g8 | %6
g1 r8 g4 fis8 \pcAO | %7
g4. fis4 g8 c4. b4 a8 | b1 r8 r4. | %9
r g4 a8 b4. \pcAO d4 \pcAO d8 | %10
d2.~d4. d4 d8 | d4. d4 d8 d4. d4 d8 | %12
d4. d4 d8 d4. \pcAp r | %13
r \pcAu g,4 a8 b4. d4 d8 | %14
c4. c4 c8 c4. g4 g8 | g4. b4 d8 c4. b4 a8 b2.~b4.
}
AHxICMusicLHB = \relative c{ \AHxICMusicGlobal \clef "bass"
g'4 g8 | g4. b,4 b8 c4. c4 c8 | %2
g1 r8 b4 d8 | g4. g4 g8 g4. g4 g8 | %4
d1 r8 g4 g8 | g4. b,4 b8 c4. c4 c8 | %6
g1 r8 b4 d8 | g4. c,4 b8 c4. d4 d8 | %8
g1 r8 r4. | r g,4 g8 g4. r | %10
r d'4 d8 d4. d4 d8 | d4. d4 d8 d4. d4 d8 | %12
g4. g,4 g8 g4. g4 g8 | %13
g4. g4 g8 g4. g4 b8 | c4. c4 c8 c4. c4 c8 | %15
d4. d4 d8 d4. d4 d8 g2.~g4.
}
AHxICMusicLH = \partCombine #'(2.20) \AHxICMusicLHA\AHxICMusicLHB

AHxICMusicLyrics = \relative c''''{ \AHxICMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8 c4. c4 c8 c4. c4 c8 c1 cr8 c4 c8 c4. c4 c8 c4. c4 c8 c1 cr8 c4 c8 c4. c4 c8 c4. c4 c8 c1 cr8 c4 c8 c4. c4 c8 c4. c4 c8 c1 cr8 c4 c8 c2. ct4. c4 c8 c2. ct4. c4 c8 c4. c4 c8 c4. c4 c8 c2. ct4. c4 c8 c2. ct4. c4 c8 c2. ct4. c4 c8 c4. c4 c8 c4. c4 c8 c2. ct4.
}


AIxCGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key as \major

}

AIxCGMusicRHA = \relative c'{ \AIxCGMusicGlobal \clef "treble"
ees4. ees8 f ees c ees |  \nbp f2 aes | %2
g4. f8 ees f g bes |  \nbp aes1 | %4
ees4. ees8 f ees c ees |  \nbp f2 aes | %6
g4. f8 ees f g bes |  \nbp aes1 \cbp | %8
c4. \postCho c8 bes aes aes bes | %9
\nbp aes2 \pcAO f | %10
bes4. c8 bes aes g ees |  \nbp aes1 | %12
ees4. ees8 f ees c ees |  \nbp f2 aes | %14
g4. f8 ees f g bes \nbp aes1 \he
}
AIxCGMusicRHB = \relative c'{ \AIxCGMusicGlobal \clef "treble"
c4. c8 des c aes c | des2 f | %2
ees4. des8 des des des des | c1 | %4
c4. c8 des c aes c | des2 f | %6
ees4. des8 des des des des | c1 | %8
ees4. ees8 ees ees ges ges | f2 f | %10
ees4. ees8 ees ees ees des | c1 | %12
c4. c8 des c aes c | des2 f | %14
ees4. des8 des des des des c1
}
AIxCGMusicRH = \partCombine #'(2.20) \AIxCGMusicRHA\AIxCGMusicRHB
AIxCGMusicLHA = \relative c{ \AIxCGMusicGlobal \clef "bass"
aes'4. aes8 aes aes ees aes | aes2 des | %2
bes4. aes8 g aes bes g | aes1 | %4
aes4. aes8 aes aes ees aes | aes2 des | %6
bes4. aes8 g aes bes g | aes1 | %8
c4. c8 des c c c | des2 aes | %10
g4. aes8 g c des g, | aes1 | %12
aes4. aes8 aes aes ees aes | aes2 des | %14
bes4. aes8 g aes bes g aes1
}
AIxCGMusicLHB = \relative c{ \AIxCGMusicGlobal \clef "bass"
aes4. aes8 aes aes aes aes | des2 des | %2
ees4. ees8 ees ees ees ees | aes,1 | %4
aes4. aes8 aes aes aes aes | des2 des | %6
ees4. ees8 ees ees ees ees | aes,1 | %8
aes'4. aes8 aes aes aes aes | des,2 des | %10
ees4. ees8 ees ees ees ees | aes,1 | %12
aes4. aes8 aes aes aes aes | des2 des | %14
ees4. ees8 ees ees ees ees aes,1
}
AIxCGMusicLH = \partCombine #'(2.20) \AIxCGMusicLHA\AIxCGMusicLHB

AIxCGMusicLyrics = \relative c''''{ \AIxCGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1
}


BZxCIDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key bes \major

}

BZxCIDMusicRHA = \relative c'{ \BZxCIDMusicGlobal \clef "treble"
f2 f4 f | f2. f4 | g g g f | %3
\nbp f2. \lbp f4 |  \nbp bes2 c | %5
d4 c bes g | f2 f4 (ees) \nbp d1 \he
}
BZxCIDMusicRHB = \relative c'{ \BZxCIDMusicGlobal \clef "treble"
d2 c8 [d] ees4 | d2. d4 | %2
ees ees ees ees | d2. d4 | ees2 e | %5
f4 f f ees | d2 c bes1
}
BZxCIDMusicRH = \partCombine #'(2.20) \BZxCIDMusicRHA\BZxCIDMusicRHB
BZxCIDMusicLHA = \relative c{ \BZxCIDMusicGlobal \clef "bass"
bes'2 a8 [bes] c4 | bes2. bes4 | %2
bes c c c | bes2. bes4 | bes2 bes | %5
bes4 a bes bes | bes2 a f1
}
BZxCIDMusicLHB = \relative c{ \BZxCIDMusicGlobal \clef "bass"
bes2 f'4 f | bes,2. bes4 | %2
ees c8 [bes] a4 a | bes2. aes'4 | %4
g2 ges | f4 ees d ees | f2 f, bes1
}
BZxCIDMusicLH = \partCombine #'(2.20) \BZxCIDMusicLHA\BZxCIDMusicLHB

BZxCIDMusicLyrics = \relative c''''{ \BZxCIDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c2 c2 c4 c4 c4 c4 c2 c4 c4 c1
}


BAxAAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major

}

BAxAAMusicRHA = \relative c'{ \BAxAAMusicGlobal \clef "treble"
\pcAO ees2 g4 bes | bes4. aes8 g2 | %2
f f4 aes | aes4. g8 f2 | g f4 c' | %5
\nbp bes1 | bes2 g4 aes | bes4. c8 bes2 | %8
bes g4 aes | bes4. c8 bes2 | ees d4 c | %11
bes4. aes8 g4 \pcAO \lbp ees | %12
\nbp f2 bes \pcAO \nbp ees,1 \he
}
BAxAAMusicRHB = \relative c'{ \BAxAAMusicGlobal \clef "treble"
ees2 ees4 g | g4. f8 ees2 | d d4 f | %3
f4. ees8 d2 | ees d4 ees | d1 | %6
g2 ees4 f | g4. aes8 g2 | g ees4 f | %9
g4. aes8 g2 | aes ees4 ees | %11
ees4. ees8 ees4 ees | c2 d ees1
}
BAxAAMusicRH = \partCombine #'(2.20) \BAxAAMusicRHA\BAxAAMusicRHB
BAxAAMusicLHA = \relative c{ \BAxAAMusicGlobal \clef "bass"
g'2 bes4 bes | bes4. bes8 bes2 | %2
bes bes4 bes | bes4. bes8 bes2 | %4
bes bes4 a | bes1 | bes2 bes4 bes | %7
ees4. ees8 ees2 | ees bes4 bes | %9
ees4. ees8 ees2 | c bes4 aes | %11
g4. c8 bes4 bes | aes2 aes g1
}
BAxAAMusicLHB = \relative c{ \BAxAAMusicGlobal \clef "bass"
ees2 ees4 ees | ees4. ees8 ees2 | %2
bes bes4 bes | bes4. bes8 bes2 | %4
ees f4 f | bes,1 | ees2 ees4 ees | %7
ees4. ees8 ees2 | ees ees4 ees | %9
ees4. ees8 ees2 | ees ees4 ees | %11
ees4. ees8 ees4 g, | aes2 bes ees1
}
BAxAAMusicLH = \partCombine #'(2.20) \BAxAAMusicLHA\BAxAAMusicLHB

BAxAAMusicLyrics = \relative c''''{ \BAxAAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c2 c2 c4 c4 c1 c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c4 c4 c2 c2 c1
}


BBxHAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key g \major
\partial 4
\accidentalStyle Score.modern
}

BBxHAMusicRHA = \relative c'{ \BBxHAMusicGlobal \clef "treble"
\pcAO d8 \pcAO d | %1
\nbp g4. fis8 a \pcAO g | %2
\nbp b4 b \lbp b8 c | %3
\nbp a4. \pcAO d,8 a' b | %4
\nbp g4. r8 \fb \pcAO d \pcAO d | %5
\nbp g4. fis8 a g | %6
\nbp b4 b \lbp b8 b | %7
\nbp a4. a8 b cis | %8
\nbp d4. r8 \cbp d \postCho d | %9
\nbp e4. d8 c b | c4 c8 r \lbp c c | %11
\nbp d4. c8 b a | b4 b8 r \lbp d4~| %13
\nbp d8 c b a g fis | %14
e4 d8 r \pcAO \lbp d g | g4. fis8 a g | %16
\nbp b2 r4 \fb | d c2 | c4 b2 | %19
b8 a gis a \fpre c \fpost b \nbp g2 \he
}
BBxHAMusicRHB = \relative c'{ \BBxHAMusicGlobal \clef "treble"
d8 d | d4. d8 fis g | g4 g g8 g | %3
fis4. d8 fis fis | d4. r8 d d | %5
d4. d8 d d | g4 g f8 f | fis4. fis8 g g | %8
fis4. r8 g g | fis4. g8 fis g | %10
fis4 fis8 r fis fis | g4. fis8 g fis | %12
g4 g8 r b4~| b8 a g fis d d | %14
c4 b8 r d d | d4. d8 c b | d2 r4 | f e2 | %18
e4 d2 | fis8 fis eis fis fis fis d2
}
BBxHAMusicRH = \partCombine #'(2.20) \BBxHAMusicRHA\BBxHAMusicRHB
BBxHAMusicLHA = \relative c{ \BBxHAMusicGlobal \clef "bass"
d'8 d | b4. a8 c b | d4 d d8 e | %3
c4. c8 c d | b4. r8 d d | b4. a8 c b | %6
d4 d d8 d | d4. d8 d e | d4. r8 b b | %9
c4. b8 a d | a4 a8 r d d | b4. a8 b d | %12
d4 d8 r d4~| d8 d d d d g, | %14
g4 g8 r b b | b4. a8 fis g | g2 r4 | %17
g g2 | g4 g2 | d'8 c b c e d b2
}
BBxHAMusicLHB = \relative c{ \BBxHAMusicGlobal \clef "bass"
d8 d | g,4. d'8 d g | g4 g g8 g | %3
d4. d8 d d | g,4. r8 d' d | g,4. d'8 d g | %6
g4 g gis8 gis | a4. a8 a, a | d4. r8 d d | %9
d4. d8 d d | d4 d8 r d d | d4. d8 d d | %12
g4 g8 r g,4~| g8 g g a b b | %14
c4 g8 r g' g | d4. d8 d d | g,2 r4 | %17
b c2 | c4 d2 | d8 d d d \fpre d \fpostbelow d \pcCh <g g,>2
}
BBxHAMusicLH = \partCombine #'(2.20) \BBxHAMusicLHA\BBxHAMusicLHB

BBxHAMusicLyrics = \relative c''''{ \BBxHAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c4. cr8 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c4. cr8 c8 c8 c4. c8 c8 c8 c4 c8 cr8 c8 c8 c4. c8 c8 c8 c4 c8 cr8 c4 ct8 c8 c8 c8 c8 c8 c4 c8 cr8 c8 c8 c4 ct8 c8 c8 c8 c2 cr4 c4 c4 ct4 c4 c2 c8 c8 c8 c8 c8 c8 c2
}


BCxAZBMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major
\partial 4

}

BCxAZBMusicRHA = \relative c'{ \BCxAZBMusicGlobal \clef "treble"
ees8. f16 | %1
\nbp g8. g16 g8. g16 g4 \lbp ees8. g16 | %2
\nbp bes8. bes16 bes8. bes16 bes4 \lbp bes8. bes16 | %3
\nbp c8. c16 c8. c16 c [ees8.] \breathe  \lbp bes g16 | %4
\nbp f2. \lbp g8. aes16 | %5
\nbp bes8. bes16 bes8. bes16 bes4 \lbp bes8. bes16 | %6
\nbp c8. c16 c8. c16 c [ees8.] \breathe \pcAO \lbp ees, f16 | %7
\nbp g8. g16 g8. g16 g [bes8.] \breathe \lbp f g16 | %8
\nbp ees2. \cbp \pcAp bes'8. \postCho  bes16 | %9
\nbp bes2. \pcAu \times 2/3 {c8 (bes g)} \pcAO | %10
\nbp ees'2. \lbp d8. c16 | %11
\nbp bes8. bes16 bes8. bes16 c bes8. bes g16 | %12
\nbp f2. \lbp g8. aes16 | %13
\nbp bes8. bes16 bes8. bes16 bes4 \lbp bes8. bes16 | %14
\nbp c8. c16 c8. c16 c [ees8.] \breathe \pcAO \lbp ees, f16 | %15
\nbp g8. g16 g8. g16 g [bes8.] \breathe \lbp f g16 \nbp ees2. \he
}
BCxAZBMusicRHB = \relative c'{ \BCxAZBMusicGlobal \clef "treble"
bes8. bes16 | %1
ees8. ees16 ees8. ees16 ees4 bes8. ees16 | %2
g8. g16 g8. g16 g4 ees8. ees16 | %3
ees8. ees16 ees8. ees16 ees4 ees8. ees16 | %4
d2. ees8. f16 | %5
g8. g16 g8. g16 g4 ees8. ees16 | %6
ees8. ees16 ees8. ees16 ees4 ees8. d16 | %7
ees8. ees16 ees8. ees16 d4 d8. d16 | %8
bes2. r4 | r g'8. g16 g4 r | %10
r g8. g16 g4 bes8. aes16 | %11
g8. g16 g8. g16 aes g8. g ees16 | %12
d2. ees8. f16 | %13
g8. g16 g8. g16 g4 ees8. ees16 | %14
ees8. ees16 ees8. ees16 ees4 ees8. d16 | %15
ees8. ees16 ees8. ees16 d4 d8. bes16 bes2.
}
BCxAZBMusicRH = \partCombine #'(2.20) \BCxAZBMusicRHA\BCxAZBMusicRHB
BCxAZBMusicLHA = \relative c{ \BCxAZBMusicGlobal \clef "bass"
g'8. aes16 | %1
bes8. bes16 bes8. bes16 bes4 g8. bes16 | %2
ees8. ees16 ees8. ees16 ees4 g,8. bes16 \pcAO | %3
aes8. \pcAO aes16 \pcAO aes8. \pcAO aes16 c4 bes8. bes16 | %4
bes2. bes8. bes16 | %5
ees8. ees16 ees8. ees16 bes4 g8. bes16 \pcAO | %6
aes8. \pcAO aes16 \pcAO aes8. \pcAO aes16 c4 bes8. bes16 | %7
bes8. bes16 bes8. bes16 bes4 aes8. bes16 | %8
g2. r4 | r ees'8. ees16 ees4 r | %10
r bes8. bes16 bes4 bes8. bes16 | %11
ees8. ees16 ees8. ees16 ees ees8. bes bes16 | %12
bes4 \pcAO bes8. \pcAO bes16 bes4 bes8. bes16 | %13
ees8. ees16 ees8. ees16 bes4 g8. bes16 \pcAO | %14
aes8. \pcAO aes16 \pcAO aes8. \pcAO aes16 c4 bes8. bes16 | %15
bes8. bes16 bes8. g16 f4 aes8. aes16 g2.
}
BCxAZBMusicLHB = \relative c{ \BCxAZBMusicGlobal \clef "bass"
ees8. ees16 | %1
ees8. ees16 ees8. ees16 ees4 ees8. ees16 | %2
ees8. ees16 ees8. ees16 ees4 ees8. g16 | %3
aes8. aes16 aes8. aes16 aes4 g8. ees16 | %4
bes2. ees8. ees16 | %5
ees8. ees16 ees8. ees16 ees4 ees8. g16 | %6
aes8. aes16 aes8. aes16 aes4 g8. f16 | %7
ees8. ees16 ees8. ees16 bes4 bes8. bes16 | %8
ees2. r4 | r ees8. ees16 ees4 r | %10
r ees8. ees16 ees4 ees8. ees16 | %11
ees8. ees16 ees8. ees16 ees ees8. ees ees16 | %12
bes4 bes'8. bes16 bes8 [aes] g8. f16 | %13
ees8. ees16 ees8. ees16 ees4 ees8. g16 | %14
aes8. aes16 aes8. aes16 aes4 g8. f16 | %15
ees8. ees16 ees8. ees16 bes4 bes8. bes16 ees2.
}
BCxAZBMusicLH = \partCombine #'(2.20) \BCxAZBMusicLHA\BCxAZBMusicLHB

BCxAZBMusicLyrics = \relative c''''{ \BCxAZBMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c8. c16 c8. c16 c4 c8. c16 c8. c16 c8. c16 c4 c8. c16 c8. c16 c8. c16 c16 ct8. c8. c16 c2. c8. c16 c8. c16 c8. c16 c4 c8. c16 c8. c16 c8. c16 c16 ct8. c8. c16 c8. c16 c8. c16 c16 ct8. c8. c16 c2. c8. c16 c2. c8*2/3 ct8*2/3 c8*2/3 c2. c8. c16 c8. c16 c8. c16 c16 c8. c8. c16 c2. c8. c16 c8. c16 c8. c16 c4 c8. c16 c8. c16 c8. c16 c16 ct8. c8. c16 c8. c16 c8. c16 c16 ct8. c8. c16 c2.
}


BDxABDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

BDxABDMusicRHA = \relative c'{ \BDxABDMusicGlobal \clef "treble"

}
BDxABDMusicRHB = \relative c'{ \BDxABDMusicGlobal \clef "treble"

}
BDxABDMusicRH = \partCombine #'(2.20) \BDxABDMusicRHA\BDxABDMusicRHB
BDxABDMusicLHA = \relative c{ \BDxABDMusicGlobal \clef "bass"

}
BDxABDMusicLHB = \relative c{ \BDxABDMusicGlobal \clef "bass"

}
BDxABDMusicLH = \partCombine #'(2.20) \BDxABDMusicLHA\BDxABDMusicLHB

BDxABDMusicLyrics = \relative c''''{ \BDxABDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4 c2 c4. c8 c8 c8 c4 c4 c4 c4. c8 c8 c8 c4 c4 c4 c4. c8 c4 c2
}


BExCHDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key f \major
}

BExCHDMusicRHA = \relative c'{ \BExCHDMusicGlobal \clef "treble"
\repeat volta 2 {f4 f8 g a4 a8 bes | %1
c4 d8 c a2 | c4 bes8 a g2 | %3
bes4 a8 g \pcAO f2} | %4
c'4 bes8 a g4 \pcAO c,8 \pcAO c | %5
bes'4 a8 g \pcAO f2 | %6
c'4 bes8 a g4 \pcAO c,8 \pcAO c | %7
\nbp bes'4 a8 \lbp g \pcAO f2 | %8
\nbp f4 f8 g a4 a8 bes | %9
\nbp c4 d8 \lbp c a2 | %10
\nbp c4 bes8 a g2 bes4 a8 g \pcAO f2
}
BExCHDMusicRHB = \relative c'{ \BExCHDMusicGlobal \clef "treble"
c4 c8 e f4 f8 f | f4 f8 f f2 | %2
e4 e8 f e2 | e4 f8 e f2 | %4
e4 e8 f e4 c8 c | e4 f8 e f2 | %6
e4 e8 f e4 c8 c | e4 f8 e f2 | %8
c4 c8 e f4 f8 f | f4 f8 f f2 | %10
e4 e8 f e2 e4 e8 e f2
}
BExCHDMusicRH = \partCombine #'(2.20) \BExCHDMusicRHA\BExCHDMusicRHB
BExCHDMusicLHA = \relative c{ \BExCHDMusicGlobal \clef "bass"
a'4 a8 c c4 \pcAO f,8 g | a4 bes8 a c2 | %2
c4 g8 c c2 | g4 c8 bes a2 | %4
g4 g8 c c4 bes8 bes | c4 c8 bes a2 | %6
g4 g8 c c4 bes8 bes | g4 c8 bes a2 | %8
a4 a8 c c4 \pcAO f,8 g | a4 bes8 a c2 | %10
c4 g8 c c2 g4 c8 bes a2
}
BExCHDMusicLHB = \relative c{ \BExCHDMusicGlobal \clef "bass"
f4 f8 c f4 f8 f | f4 f8 f f2 | %2
c4 c8 c c2 | c4 c8 c f2 | %4
c4 c8 c c4 e8 e | c4 c8 c f2 | %6
c4 c8 c c4 c8 c | c4 c8 c f2 | %8
f4 f8 c f4 f8 f | f4 f8 f f2 | %10
c4 c8 c c2 c4 c8 c \pcCh <f f,> 2
}
BExCHDMusicLH = \partCombine #'(2.20) \BExCHDMusicLHA\BExCHDMusicLHB

BExCHDMusicLyrics = \relative c''''{ \BExCHDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c\ParStart c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c2 c4 c8 c8 c2 c\ParEnd c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c2 c4 c8 c8 c2
}


BFxCFEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

BFxCFEMusicRHA = \relative c'{ \BFxCFEMusicGlobal \clef "treble"

}
BFxCFEMusicRHB = \relative c'{ \BFxCFEMusicGlobal \clef "treble"

}
BFxCFEMusicRH = \partCombine #'(2.20) \BFxCFEMusicRHA\BFxCFEMusicRHB
BFxCFEMusicLHA = \relative c{ \BFxCFEMusicGlobal \clef "bass"

}
BFxCFEMusicLHB = \relative c{ \BFxCFEMusicGlobal \clef "bass"

}
BFxCFEMusicLH = \partCombine #'(2.20) \BFxCFEMusicLHA\BFxCFEMusicLHB

BFxCFEMusicLyrics = \relative c''''{ \BFxCFEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 ct4 c4 c2 c4 c4 ct4 c4 c2 c4 c2 c4 c4. c8 c4 c2. c2 c4 c4 ct4 c4 c2 c4 c4 ct4 c4 c2 c4 c4 ct4 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c4. ct8 c4 c2 c4 c2 c4 c4 ct4 c4 c2. c2 c4 c4 ct4 c4 c2 c4 c4 ct4 c4 c2 c4 c4 c4 c4 c2 c4 c2.
}


BGxBBGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key es \major
\partial 4.

}

BGxBBGMusicRHA = \relative c'{ \BGxBBGMusicGlobal \clef "treble"
bes'8 bes aes | g4. aes8 bes c | %2
\nbp bes4. \pcAO \lbp ees,8 g bes | %3
bes4. g8 g f |  \nbp f4. \lbp g8 aes bes | %5
c4. ees8 d c | %6
\nbp bes4. \lbp ees8 ees g, | %7
bes4. \pcAO ees,8 g f \pcAO | %8
\nbp ees4. \cbp g8 \postCho f aes | %9
aes4. f8 aes g | %10
\nbp g4. \lbp bes8 bes g | %11
g4. \pcAO ees8 g f | %12
\nbp f4. \lbp g8 aes bes | c4. ees8 d c | %14
\nbp bes4. \lbp ees8 ees g, | %15
bes4. \pcAO ees,8 g f \pcAO \nbp ees4. \he
}
BGxBBGMusicRHB = \relative c'{ \BGxBBGMusicGlobal \clef "treble"
g'8 g f | ees4. f8 g aes | %2
g4. ees8 ees g | f4. ees8 ees d | %4
d4. ees8 d ees | ees4. ees8 ees ees | %6
g4. g8 g ees | ees4. ees8 ees d | %8
ees4. ees8 d f | f4. d8 f ees | %10
ees4. g8 g ees | ees4. ees8 ees d | %12
d4. ees8 d ees | ees4. ees8 f aes | %14
g4. g8 g ees | g4. ees8 ees d ees4.
}
BGxBBGMusicRH = \partCombine #'(2.20) \BGxBBGMusicRHA\BGxBBGMusicRHB
BGxBBGMusicLHA = \relative c{ \BGxBBGMusicGlobal \clef "bass"
bes'8 bes bes | bes4. bes8 bes bes | %2
ees4. g,8 bes ees | d4. bes8 bes bes | %4
bes4. bes8 bes bes \pcAO | %5
aes4. c8 bes c | ees4. bes8 bes bes | %7
g4. g8 bes aes | g4. r4 bes8 | %9
bes bes bes r4 bes8 | %10
bes bes bes ees ees bes | %11
bes bes bes r4 bes8 | %12
bes bes bes bes bes bes \pcAO | %13
aes \pcAO aes \pcAO aes r4 ees'8 | %14
ees ees ees r4 ees8 | %15
ees bes bes g bes aes g4.
}
BGxBBGMusicLHB = \relative c{ \BGxBBGMusicGlobal \clef "bass"
ees8 ees ees | ees4. ees8 ees ees | %2
ees4. ees8 ees ees | bes4. bes8 bes bes | %4
bes4. ees8 f g | aes4. aes8 aes aes | %6
ees4. ees8 ees ees | ees4. ees8 bes bes | %8
ees4. r4 bes8 | bes bes bes r4 ees8 | %10
ees ees ees ees ees ees | %11
ees ees ees r4 bes8 | bes bes bes ees f g | %13
aes aes aes r4 aes8 | ees ees ees r4 ees8 | %15
ees ees ees ees bes bes ees4.
}
BGxBBGMusicLH = \partCombine #'(2.20) \BGxBBGMusicLHA\BGxBBGMusicLHB

BGxBBGMusicLyrics = \relative c''''{ \BGxBBGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}


BHxCIZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

BHxCIZMusicRHA = \relative c'{ \BHxCIZMusicGlobal \clef "treble"

}
BHxCIZMusicRHB = \relative c'{ \BHxCIZMusicGlobal \clef "treble"

}
BHxCIZMusicRH = \partCombine #'(2.20) \BHxCIZMusicRHA\BHxCIZMusicRHB
BHxCIZMusicLHA = \relative c{ \BHxCIZMusicGlobal \clef "bass"

}
BHxCIZMusicLHB = \relative c{ \BHxCIZMusicGlobal \clef "bass"

}
BHxCIZMusicLH = \partCombine #'(2.20) \BHxCIZMusicLHA\BHxCIZMusicLHB

BHxCIZMusicLyrics = \relative c''''{ \BHxCIZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c
}


BIxBAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/2
\key g \major
\partial 2.

}

BIxBAMusicRHA = \relative c'{ \BIxBAMusicGlobal \clef "treble"
d4 e g | fis2. e4 d fis a c | %2
\nbp b1 r4 \lbp b cis b | %3
\pcAO a2. d4 a g fis g | %4
\nbp a1 r4 \lbp a b c | b2. c4 d b a g | %6
\nbp c1 r4 \lbp e, fis g | %7
b2. g4 fis2. g4 \nbp g1 r4 \he
}
BIxBAMusicRHB = \relative c'{ \BIxBAMusicGlobal \clef "treble"
b4 b b | c2. c4 c c c e | d1 r4 g g g | %3
a2. fis4 e e d e | fis1 r4 fis g fis | %5
g2. fis4 f f f f | e1 r4 c e e | %7
d2. d4 d2. d4 d1 r4
}
BIxBAMusicRH = \partCombine #'(2.20) \BIxBAMusicRHA\BIxBAMusicRHB
BIxBAMusicLHA = \relative c{ \BIxBAMusicGlobal \clef "bass"
g'4 g g | a2. g4 fis a fis fis | %2
g1 r4 d' e d  | d2. a4 a a a a | %4
a1 r4 c b a \pcAO | g2. a4 b d g, g | %6
g1 r4 g a ais | g2. b4 c2. c4 b1 r4
}
BIxBAMusicLHB = \relative c{ \BIxBAMusicGlobal \clef "bass"
g4 g g | d'2. d4 d d d d | g,1 r4 g' g g | %3
fis2. d4 cis cis a a | d1 r4 d d d | %5
g2. g4 g g b, b | c1 r4 c c cis | %7
d2. d4 d2. d4 g,1 r4
}
BIxBAMusicLH = \partCombine #'(2.20) \BIxBAMusicLHA\BIxBAMusicLHB

BIxBAMusicLyrics = \relative c''''{ \BIxBAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c2. c4 c4 c4 c4 c4 c1 cr4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c1 cr4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c1 cr4 c4 c4 c4 c2. c4 c2. c4 c1 cr4
}


CZxBFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major
\partial 4

}

CZxBFMusicRHA = \relative c'{ \CZxBFMusicGlobal \clef "treble"
bes'4 \pcAO |  \nbp ees, f g aes | %2
\nbp bes2. \lbp g4 | %3
\nbp c bes aes bes | %4
\nbp g2. \lbp bes4 |  \nbp ees, f g aes | %6
\nbp bes2. \lbp g4 | %7
\nbp c bes aes f \pcAO | %8
\nbp ees2. \lbp c'4 |  \nbp ees d c aes | %10
\nbp g2. \pcAO \lbp ees4 | %11
\nbp bes' aes g f \pcAO \nbp ees2. \he
}
CZxBFMusicRHB = \relative c'{ \CZxBFMusicGlobal \clef "treble"
ees4 | ees d ees ees | f2. ees4 | %3
ees d ees f | ees2. d4 | c d ees ees | %6
f2. ees4 | ees ees ees d | ees2. ees4 | %9
g g g f | d2. ees4 | ees ees ees d ees2.
}
CZxBFMusicRH = \partCombine #'(2.20) \CZxBFMusicRHA\CZxBFMusicRHB
CZxBFMusicLHA = \relative c{ \CZxBFMusicGlobal \clef "bass"
g'4 | bes aes g c | d2. bes4 | %3
aes f c' bes | bes2. bes4 | g bes bes c | %6
d2. bes4 | aes bes c bes | g2. g4 | %9
c b c c | b2. c4 | bes c \pcAO bes bes g2.
}
CZxBFMusicLHB = \relative c{ \CZxBFMusicGlobal \clef "bass"
ees4 | g f ees c | bes2. ees4 | %3
aes, bes c d | ees2. bes4 | c bes ees c | %6
bes2. ees4 | aes, g aes bes | ees2. c4 | %9
c d ees f | g2. aes4 | g aes bes bes, ees2.
}
CZxBFMusicLH = \partCombine #'(2.20) \CZxBFMusicLHA\CZxBFMusicLHB

CZxBFMusicLyrics = \relative c''''{ \CZxBFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2.
}


CAxBHIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

CAxBHIMusicRHA = \relative c'{ \CAxBHIMusicGlobal \clef "treble"

}
CAxBHIMusicRHB = \relative c'{ \CAxBHIMusicGlobal \clef "treble"

}
CAxBHIMusicRH = \partCombine #'(2.20) \CAxBHIMusicRHA\CAxBHIMusicRHB
CAxBHIMusicLHA = \relative c{ \CAxBHIMusicGlobal \clef "bass"

}
CAxBHIMusicLHB = \relative c{ \CAxBHIMusicGlobal \clef "bass"

}
CAxBHIMusicLH = \partCombine #'(2.20) \CAxBHIMusicLHA\CAxBHIMusicLHB

CAxBHIMusicLyrics = \relative c''''{ \CAxBHIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8 c8 c4 c8 c8 c8 c8 c4 c4 c8 c8 c4 c8 c8 c8 c8 c4 c4 c8 c8 c4 c8 ct8 c8 c8 c4 c4 c8 c8 c4 c4 c2 c4 c8 c8 c4 c4 c2 c4 c8 c8 c4 c4 c2 c\chorusbelow18 c4 c8 c8 c4 c8 ct8 c8 c8 c4 c4 c8 c8 c4 c4 c4
}


CBxBZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key es \major

}

CBxBZMusicRHA = \relative c'{ \CBxBZMusicGlobal \clef "treble"
bes'2 aes8 g | f aes4. \lbp g8 f | %2
\nbp ees4. g8 bes aes |  \nbp g2 r4 | %4
bes2 aes8 g | f aes4. \lbp g8 f | %6
ees2 f4 | %7
\nbp ees2 \pcAO \lbp ees8 \pcAO ees | %8
\nbp c'2 c4 | %9
\nbp c8 bes4. \pcAO \lbp ees,8 g | %10
\nbp bes4. g8 g f | %11
\nbp f2 \pcAO \lbp ees8 \pcAO ees | %12
\nbp c'2 c4 | %13
\nbp c8 bes4. \pcAO \lbp ees,8 aes | %14
g2 f4 |  \nbp ees2 r4 \cbp | %16
bes' \postCho g c8. [g16] | %17
bes8. [aes16] aes4 \lbp aes8 aes | %18
\nbp d4. c8 bes aes |  \nbp c4 (bes) r | %20
bes g c8. [g16] | %21
bes8. [aes16] aes4 \lbp aes8 aes | %22
\nbp aes aes  aes4. d,8 \nbp ees2 r4 \he
}
CBxBZMusicRHB = \relative c'{ \CBxBZMusicGlobal \clef "treble"
g'2 f8 ees | c c4. c8 c | bes4. ees8 d f | %3
ees2 r4 | g2 f8 ees | c c4. c8 c | %6
bes2 bes4 | bes2 ees8 ees | ees2 aes4 | %9
aes8 g4. ees8 ees | g4. ees8 ees ees | %11
d2 ees8 ees | ees2 aes4 | %13
aes8 g4. ees8 ees | ees2 d4 | g,2 r4 | %16
g' ees aes8. [ees16] | %17
g8. [f16] f4 f8 f | aes4. aes8 g f | %19
aes4 (g) r | g ees aes8. [ees16] | %21
g8. [f16] f4 f8 ees | d c bes4. bes8 bes2 r4
}
CBxBZMusicRH = \partCombine #'(2.20) \CBxBZMusicRHA\CBxBZMusicRHB
CBxBZMusicLHA = \relative c{ \CBxBZMusicGlobal \clef "bass"
bes'2 bes8 bes | aes ees4. ees8 aes | %2
g4. bes8 bes bes | bes2 r4 | %4
bes2 bes8 bes | aes ees4. ees8 aes | %6
g2 aes4 | g2 \pcAO ees8 \pcAO ees | aes2 ees'4 | %9
ees8 ees4. g,8 bes | ees4. bes8 c a | %11
bes2 \pcAO ees,8 \pcAO ees | aes2 ees'4 | %13
ees8 ees4. g,8 c | bes2 aes4 | g2 r4 | %16
ees' bes ees8. [bes16] | d4 d d8 d | %18
f4. d8 d d | ees2 r4 | %20
ees bes ees8. bes16 | bes4 bes bes8 bes | %22
bes bes bes4. aes8 g2 r4
}
CBxBZMusicLHB = \relative c{ \CBxBZMusicGlobal \clef "bass"
ees2 d8 ees | aes, aes4. aes8 aes | %2
bes4. bes8 bes d | ees2 r4 | ees2 d8 ees | %5
aes, aes4. aes8 aes | bes2 bes4 | %7
ees2 ees8 ees | aes,2 aes'4 | %9
ees8 ees4. ees8 ees | ees4. ees8 c c | %11
bes2 ees8 ees | aes,2 aes'4 | %13
ees8 ees4. ees8 aes, | bes2 bes4 | %15
ees2 r4 | ees ees ees8. [ees16] | %17
bes'4 bes bes8 bes | bes4. bes8 bes bes | %19
ees,2 r4 | ees ees ees8. ees16 | %21
bes4 bes bes8 bes | bes bes bes4. bes8 ees2 r4
}
CBxBZMusicLH = \partCombine #'(2.20) \CBxBZMusicLHA\CBxBZMusicLHB

CBxBZMusicLyrics = \relative c''''{ \CBxBZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 cr4 c2 c8 c8 c8 c4. c8 c8 c2 c4 c2 c8 c8 c2 c4 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c2 c4 c8 c4. c8 c8 c2 c4 c2 cr4 c4 c4 c8. ct16 c8. ct16 c4 c8 c8 c4. c8 c8 c8 c4 ct4 cr4 c4 c4 c8. ct16 c8. ct16 c4 c8 c8 c8 c8 c4. c8 c2
}


CCxCDDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

CCxCDDMusicRHA = \relative c'{ \CCxCDDMusicGlobal \clef "treble"

}
CCxCDDMusicRHB = \relative c'{ \CCxCDDMusicGlobal \clef "treble"

}
CCxCDDMusicRH = \partCombine #'(2.20) \CCxCDDMusicRHA\CCxCDDMusicRHB
CCxCDDMusicLHA = \relative c{ \CCxCDDMusicGlobal \clef "bass"

}
CCxCDDMusicLHB = \relative c{ \CCxCDDMusicGlobal \clef "bass"

}
CCxCDDMusicLH = \partCombine #'(2.20) \CCxCDDMusicLHA\CCxCDDMusicLHB

CCxCDDMusicLyrics = \relative c''''{ \CCxCDDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4. c8 c8 c8 c8 c8 c2 c4 c4 c4. c8 c8 c8 c8 c8 c2 c4 c4 c4. c8 c8 c8 c8 c8 c2 c4 c4 c4. c8 c8 c8 c8 c8 c4. c8 c4 c4 c2. c4 c2.
}


CDxAECMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

CDxAECMusicRHA = \relative c'{ \CDxAECMusicGlobal \clef "treble"

}
CDxAECMusicRHB = \relative c'{ \CDxAECMusicGlobal \clef "treble"

}
CDxAECMusicRH = \partCombine #'(2.20) \CDxAECMusicRHA\CDxAECMusicRHB
CDxAECMusicLHA = \relative c{ \CDxAECMusicGlobal \clef "bass"

}
CDxAECMusicLHB = \relative c{ \CDxAECMusicGlobal \clef "bass"

}
CDxAECMusicLH = \partCombine #'(2.20) \CDxAECMusicLHA\CDxAECMusicLHB

CDxAECMusicLyrics = \relative c''''{ \CDxAECMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. c4 cr8 c8 c8 c8 c4 c8 c4. ct4
}


CExAEHMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/4
\key des \major
\partial 4

}

CExAEHMusicRHA = \relative c'{ \CExAEHMusicGlobal \clef "treble"
\pcAO des8 [ees] | %1
\nbp f2 f4 aes4. (ges8) f4 | %2
ees4. (f8) ges4 f2 \lbp aes4 | %3
\nbp aes (ees) f ges2 bes4 | %4
bes2 aes4 f2 \pcAO \lbp des8 [ees] | %5
\nbp f2 f4 aes4. (ges8) f4 | %6
bes2 bes4 des4. (c8) \lbp bes4 \nbp | %7
aes2 aes4 aes4. (ges8) f4 | ees2. aes \nbp f~f2 \he
}
CExAEHMusicRHB = \relative c'{ \CExAEHMusicGlobal \clef "treble"
des4 | des2 des4 f4. (ees8) des4 | %2
c4. (des8) ees4 des2 f4 | %3
ees2 des4 ees2 ges4 | ges2 f4 des2 des4 | %5
des2 des4 f4. (ees8) des4 | %6
ges2 ges4 ges2 ges4 | %7
f2 f4 f4. (ees8) des4 | c2. c des~des2
}
CExAEHMusicRH = \partCombine #'(2.20) \CExAEHMusicRHA\CExAEHMusicRHB
CExAEHMusicLHA = \relative c{ \CExAEHMusicGlobal \clef "bass"
f8 [ges] | aes2 aes4 aes2 aes4 | %2
aes2 aes4 aes2 des4 | %3
c2 \pcAO aes4 \pcAO aes2 c4 | %4
des2 des4 aes2 f8 [ges] | %5
aes2 aes4 aes2 \pcAO f4 | %6
des'2 des4 bes4. (c8) des4 | %7
des2 des4 aes2 aes4 \pcAO | aes2. aes aes~aes2
}
CExAEHMusicLHB = \relative c{ \CExAEHMusicGlobal \clef "bass"
des4 | des2 des4 des2 des4 | %2
aes2 aes4 des2 des4 | %3
aes'2 aes4 aes2 aes,4 | %4
des2 des4 des2 des4 | %5
des2 des4 des4. (ees8) f4 | %6
ges2 ges4 ges2 ges4 | des2 des4 des2 des4 | %8
aes'2. aes, des~des2
}
CExAEHMusicLH = \partCombine #'(2.20) \CExAEHMusicLHA\CExAEHMusicLHB

CExAEHMusicLyrics = \relative c''''{ \CExAEHMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 ct8 c2 c4 c4. ct8 c4 c4. ct8 c4 c2 c4 c4 ct4 c4 c2 c4 c2 c4 c2 c8 ct8 c2 c4 c4. ct8 c4 c2 c4 c4. ct8 c4 c2 c4 c4. ct8 c4 c2. c2. c2. ct2
}


CFxBIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/4
\key as \major
\partial 4

}

CFxBIMusicRHA = \relative c'{ \CFxBIMusicGlobal \clef "treble"
ees4 |  \nbp c'4. c8 c4 c4. bes8 aes4 | %2
aes4. f8 aes4  ees2 \lbp ees4 | %3
\nbp aes4. aes8 aes4 aes bes c | %4
\nbp bes2.~bes2 \postSegnoMark \pcAO \lbp ees,4 | %5
\nbp c'4. c8 c4 c4. bes8 aes4 | %6
aes4. f8 aes4  ees2 \pcAO \lbp ees4 | %7
\nbp aes4. aes8 aes4 c4. bes8 bes4 | %8
\nbp aes2.~aes2 \postFine \cbp aes4 \postCho | %9
\nbp des4. des8 des4 des4. des8 des4 | %10
c4. c8 c4 c2 c8 [bes] | %11
\nbp aes4. aes8 aes4 aes bes c \nbp bes2.~bes2 \postDS \he
}
CFxBIMusicRHB = \relative c'{ \CFxBIMusicGlobal \clef "treble"
c4 | ees4. ees8 ees4 ees4. ees8 ees4 | %2
f4. des8 des4 c2 c4 | %3
c4. c8 c4 ees ees ees | ees2.~ees2 ees4 | %5
ees4. ees8 ees4 ees4. ees8 ees4 | %6
f4. des8 des4 c2 ees4 | %7
c4. c8 c4 ees4. des8 des4 | %8
c2.~c2 c4 | f4. f8 f4 f4. f8 f4 | %10
ees4. ees8 ees4 ees2 ees8 [des] | %11
c4. c8 c4 ees ees ees ees2.~ees2
}
CFxBIMusicRH = \partCombine #'(2.20) \CFxBIMusicRHA\CFxBIMusicRHB
CFxBIMusicLHA = \relative c{ \CFxBIMusicGlobal \clef "bass"
aes'4 | aes4. aes8 aes4 aes4. g8 aes4 | %2
aes4. aes8 aes4 \pcAO aes2 aes4 | %3
ees4. ees8 ees4 aes g aes | %4
g2.~g2 \pcAO ees4 | %5
aes4. aes8 aes4 aes4. g8 aes4 | %6
des4. aes8 aes4 \pcAO aes2 aes4 | %7
aes4. aes8 aes4 aes4. g8 g4 | %8
aes2.~aes2 \pcAO aes4 | %9
aes4. aes8 aes4 aes4. aes8 aes4 | %10
aes4. aes8 aes4 aes2 aes4 | %11
aes4. aes8 aes4 aes g aes g2.~g2
}
CFxBIMusicLHB = \relative c{ \CFxBIMusicGlobal \clef "bass"
aes4 | aes4. aes8 aes4 aes4. bes8 c4 | %2
des4. des8 f4 aes2 aes,4 | %3
aes4. aes8 aes4 c bes aes | %4
ees'2.~ees2 ees4 | %5
aes,4. aes8 aes4 aes4. bes8 c4 | %6
des4. des8 f4 aes2 c,4 | %7
ees4. ees8 ees4 ees4. ees8 ees4 | %8
aes,2.~aes2 aes'4 | %9
des,4. des8 des4 des4. des8 des4 | %10
aes4. aes8 aes4 aes2 aes4 | %11
aes4. aes8 aes4 c bes aes ees'2.~ees2
}
CFxBIMusicLH = \partCombine #'(2.20) \CFxBIMusicLHA\CFxBIMusicLHB

CFxBIMusicLyrics = \relative c''''{ \CFxBIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4 c4 c4 c2. ct2 c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4. c8 c4 c2. ct2 c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4 c4 c4 c2. ct2 c\chorusbelow19 c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4. c8 c4 c2. ct2
}


CGxBBHMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key g \major
}

CGxBBHMusicRHA = \relative c'{ \CGxBBHMusicGlobal \clef "treble"

}
CGxBBHMusicRHB = \relative c'{ \CGxBBHMusicGlobal \clef "treble"

}
CGxBBHMusicRH = \partCombine #'(2.20) \CGxBBHMusicRHA\CGxBBHMusicRHB
CGxBBHMusicLHA = \relative c{ \CGxBBHMusicGlobal \clef "bass"

}
CGxBBHMusicLHB = \relative c{ \CGxBBHMusicGlobal \clef "bass"

}
CGxBBHMusicLH = \partCombine #'(2.20) \CGxBBHMusicLHA\CGxBBHMusicLHB

CGxBBHMusicLyrics = \relative c''''{ \CGxBBHMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c4 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c4. c4. c4. c4 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8. c16 c4. ct4 cr8 c4. c4 c8 c8 c8 c8 c8 c4 c4. c4 c8 c8 c8 c8 c4 c8 c\chorusbelow16 c4. c4 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8. c16 c4. ct4
}


CHxAIHMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

CHxAIHMusicRHA = \relative c'{ \CHxAIHMusicGlobal \clef "treble"

}
CHxAIHMusicRHB = \relative c'{ \CHxAIHMusicGlobal \clef "treble"

}
CHxAIHMusicRH = \partCombine #'(2.20) \CHxAIHMusicRHA\CHxAIHMusicRHB
CHxAIHMusicLHA = \relative c{ \CHxAIHMusicGlobal \clef "bass"

}
CHxAIHMusicLHB = \relative c{ \CHxAIHMusicGlobal \clef "bass"

}
CHxAIHMusicLH = \partCombine #'(2.20) \CHxAIHMusicLHA\CHxAIHMusicLHB

CHxAIHMusicLyrics = \relative c''''{ \CHxAIHMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c2 c4 c4 c4 c4 c2. c4 c4 c4 c2 c4 c4 c4 c4 c2. c4 c4 c4 c2 c4 c4 c4 c4 c2. c4 c4 c4 c2 c4 c4 c4 c4 c2.
}


CIxIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key f \major

}

CIxIMusicRHA = \relative c'{ \CIxIMusicGlobal \clef "treble"
c'4. c8 d c a f | f2 d4 r \pcAO | %2
c4. f8 a f c' a |  \nbp g2. r4 | %4
c4. c8 d c a f | f2 d4 r | %6
c4. f8 a g f e |  \nbp f2. r4 \cbp | %8
g4. \postCho fis8 g a bes g | a2 c4 r | %10
d4. d8 c a bes a |  \nbp g2. r4 | %12
c4. c8 d c a f | f2 d4 r | %14
c4. f8 a g f e \nbp f2. \he
}
CIxIMusicRHB = \relative c'{ \CIxIMusicGlobal \clef "treble"
f4. f8 f f f c | d2 bes4 r | %2
c4. c8 c c f f | e2. r4 | f4. f8 f f f c | %5
d2 bes4 r | a4. c8 f c c c | c2. r4 | %8
e4. dis8 e f g e | f2 f4 r | %10
f4. f8 f f g f | e2. r4 | f4. f8 f f f c | %13
d2 bes4 r | a4. c8 f c c c c2.
}
CIxIMusicRH = \partCombine #'(2.20) \CIxIMusicRHA\CIxIMusicRHB
CIxIMusicLHA = \relative c{ \CIxIMusicGlobal \clef "bass"
a'4. a8 bes a c a | bes2 f4 r | %2
a4. a8 a a a c \pcAO | c2. r4 | %4
a4. a8 bes a c a | bes2 f4 r | %6
f4. a8 c bes a g | a2. r4 | %8
c4. c8 c c c c | c2 a4 r \pcAO | %10
bes4. \pcAO bes8 c c c c | c2. r4 | %12
a4. a8 bes a c a | bes2 f4 r | %14
f4. a8 c bes a g a2.
}
CIxIMusicLHB = \relative c{ \CIxIMusicGlobal \clef "bass"
f4. f8 f f f f | bes,2 bes4 r | %2
f'4. f8 f f f a | c2. r4 | %4
f,4. f8 f f f f | bes,2 bes4 r | %6
c4. c8 c c c c | f2. r4 | c4. c8 c c c c | %9
f2 f4 r | bes4. bes8 a f e f | c2. r4 | %12
f4. f8 f f f f | bes,2 bes4 r | %14
c4. c8 c c c c f2.
}
CIxIMusicLH = \partCombine #'(2.20) \CIxIMusicLHA\CIxIMusicLHB

CIxIMusicLyrics = \relative c''''{ \CIxIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c4 cr4 c4. c8 c8 c8 c8 c8 c2. cr4 c4. c8 c8 c8 c8 c8 c2 c4 cr4 c4. c8 c8 c8 c8 c8 c2. cr4 c4. c8 c8 c8 c8 c8 c2 c4 cr4 c4. c8 c8 c8 c8 c8 c2. cr4 c4. c8 c8 c8 c8 c8 c2 c4 cr4 c4. c8 c8 c8 c8 c8 c2.
}


DZxMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key bes \major
\partial 4.
}

DZxMusicRHA = \relative c'{ \DZxMusicGlobal \clef "treble"
f8 f f | d4. f8 f f g g | %2
\nbp ees4 g4. \lbp g8 g g | %3
f4. d8 f f ees ees | %4
\nbp d2~d8 \lbp f f f | %5
d4. f8 f f g g | %6
\nbp ees4 g4. \lbp g8 g g | %7
f4. d8 f f ees ees | %8
\nbp d2~d8 \cbp f \postCho f bes | %9
d4. c8 bes8. a16 bes8 g | %10
\nbp f2~f8 \lbp bes bes a | %11
c,2~c8 ees g f | %12
\nbp d2~d8 \lbp f f bes | %13
d4. c8 bes8. a16 bes8 g | %14
\nbp f2~f8 \lbp bes a bes | %15
c2~c8 d \fpre ees \fpost a, \nbp bes2~bes8 \he
}
DZxMusicRHB = \relative c'{ \DZxMusicGlobal \clef "treble"
d8 d d | bes4. d8 ees bes ees ees | %2
bes4 ees4. ees8 ees cis | %3
d4. bes8 d d c a | bes2~bes8 d d d | %5
bes4. d8 ees bes ees ees | %6
bes4 ees4. ees8 ees cis | %7
d4. bes8 d d c a | bes2~bes8 d d d | %9
f4. aes8 g8. fis16 g8 ees | %10
d2~d8 d d ees | a,2~a8 c ees c | %12
bes2~bes8 d d d | %13
f4. aes8 g8. fis16 g8 ees | %14
d2~d8 f ees f | g2~g8 g g ees d2~d8
}
DZxMusicRH = \partCombine #'(2.20) \DZxMusicRHA\DZxMusicRHB
DZxMusicLHA = \relative c{ \DZxMusicGlobal \clef "bass"
bes'8 bes bes | f4. bes8 a f bes bes | %2
g4 bes4. bes8 bes bes | %3
bes4. \pcAO f8 a a g f | %4
f2~f8 bes bes bes | %5
f4. bes8 a f bes bes | %6
g4 bes4. bes8 bes bes | %7
bes4. \pcAO f8 a a g f | %8
f2~f8 bes bes bes | %9
bes4. bes8 ees8. ees16 ees8 bes | %10
bes2~bes8 f \pcAO f c' | %11
f,2~f8 a bes a | f2~f8 bes bes bes | %13
bes4. bes8 ees8. ees16 ees8 bes | %14
bes2~bes8 bes f bes | %15
bes2~bes8 b  c  c bes2~bes8
}
DZxMusicLHB = \relative c{ \DZxMusicGlobal \clef "bass"
bes8 bes bes | bes4. bes8 c d ees ees | %2
ees4 ees4. ees8 ees e | f4. f8 f, f f f | %4
bes2~bes8 bes bes bes | %5
bes4. bes8 c d ees ees | %6
ees4 ees4. ees8 ees e | f4. f8 f, f f f | %8
bes2~bes8 bes bes bes | %9
bes4. d8 ees8. ees16 ees8 ees | %10
bes2~bes8 bes f' f | f,2~f8 f f f | %12
bes2~bes8 bes bes bes | %13
bes4. d8 ees8. ees16 ees8 ees | %14
bes2~bes8 bes c d | ees2~ees8 d \fpre c \fpostbelow  f bes,2~bes8
}
DZxMusicLH = \partCombine #'(2.20) \DZxMusicLHA\DZxMusicLHB

DZxMusicLyrics = \relative c''''{ \DZxMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c2 ct8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c2 ct8 c8 c8 c8 c4. c8 c8. c16 c8 c8 c2 ct8 c8 c8 c8 c2 ct8 c8 c8 c8 c2 ct8 c8 c8 c8 c4. c8 c8. c16 c8 c8 c2 ct8 c8 c8 c8 c2 ct8 c8 c8 c8 c2 ct8
}


DAxDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key as \major

}

DAxDMusicRHA = \relative c'{ \DAxDMusicGlobal \clef "treble"
ees2 ees4 f \pcAO | ees2 aes | %2
aes4 g aes bes |  \nbp c1 | %4
aes2 aes4 bes | aes2 c | c4 bes c d | %7
\nbp ees1 | ees2 aes,4 aes | des2 des | %10
des4 bes c des |  \nbp c1 | %12
aes2 bes4 aes | aes2 f | ees4 ees f ees \nbp ees1 \he
}
DAxDMusicRHB = \relative c'{ \DAxDMusicGlobal \clef "treble"
c2 c4 c | ees2 ees | des4 des des des | %3
c1 | ees2 ees4 ees | f2 aes | %6
aes4 aes aes aes | g1 | ees2 ees4 ees | %9
f2 f | ees4 ees ees ees | ees1 | %12
c2 c4 c | des2 des | bes4 bes des des c1
}
DAxDMusicRH = \partCombine #'(2.20) \DAxDMusicRHA\DAxDMusicRHB
DAxDMusicLHA = \relative c{ \DAxDMusicGlobal \clef "bass"
aes'2 aes4 aes | aes2 aes | ees4 ees f g | %3
aes1 | c2 c4 c | c2 c | d4 d c bes | %7
bes1 | aes2 \pcAO c4 \pcAO c | %9
des2 bes | bes4 bes g g | aes1 | %12
aes2 aes4 aes | f2 aes | g4 g g g aes1
}
DAxDMusicLHB = \relative c{ \DAxDMusicGlobal \clef "bass"
aes2 aes4 aes | c2 c | bes4 bes bes bes | %3
aes1 | aes'2 aes4 aes | f2 f | %6
bes,4 bes bes bes | ees1 | c2 c'4 c | %9
bes2 aes | g4 g ees ees | aes,1 | %12
f'2 f4 f | des2 des | ees4 ees ees ees aes,1
}
DAxDMusicLH = \partCombine #'(2.20) \DAxDMusicLHA\DAxDMusicLHB

DAxDMusicLyrics = \relative c''''{ \DAxDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1
}


DBxDZAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \key es \major \time 3/4 \partial 4
}

DBxDZAMusicRHA = \relative c'{ \DBxDZAMusicGlobal \clef "treble"

}
DBxDZAMusicRHB = \relative c'{ \DBxDZAMusicGlobal \clef "treble"

}
DBxDZAMusicRH = \partCombine #'(2.20) \DBxDZAMusicRHA\DBxDZAMusicRHB
DBxDZAMusicLHA = \relative c{ \DBxDZAMusicGlobal \clef "bass"

}
DBxDZAMusicLHB = \relative c{ \DBxDZAMusicGlobal \clef "bass"

}
DBxDZAMusicLH = \partCombine #'(2.20) \DBxDZAMusicLHA\DBxDZAMusicLHB

DBxDZAMusicLyrics = \relative c''''{ \DBxDZAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c4 c2 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c4 c2 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c4 c2
}


DCxAGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

DCxAGMusicRHA = \relative c'{ \DCxAGMusicGlobal \clef "treble"

}
DCxAGMusicRHB = \relative c'{ \DCxAGMusicGlobal \clef "treble"

}
DCxAGMusicRH = \partCombine #'(2.20) \DCxAGMusicRHA\DCxAGMusicRHB
DCxAGMusicLHA = \relative c{ \DCxAGMusicGlobal \clef "bass"

}
DCxAGMusicLHB = \relative c{ \DCxAGMusicGlobal \clef "bass"

}
DCxAGMusicLH = \partCombine #'(2.20) \DCxAGMusicLHA\DCxAGMusicLHB

DCxAGMusicLyrics = \relative c''''{ \DCxAGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4. c8 c4. c8 c2 c2 c4 c4 c1 c2 c4. c8 c4. c8 c2 c4 c4 c4 c4 c1 c2 c4. c8 c4. c8 c2 c2 c4. c8 c4. c8 c2 c2 c4. c8 c4. c8 c2 c4 c4 c4 c4 c1
}


DDxCAZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

DDxCAZMusicRHA = \relative c'{ \DDxCAZMusicGlobal \clef "treble"

}
DDxCAZMusicRHB = \relative c'{ \DDxCAZMusicGlobal \clef "treble"

}
DDxCAZMusicRH = \partCombine #'(2.20) \DDxCAZMusicRHA\DDxCAZMusicRHB
DDxCAZMusicLHA = \relative c{ \DDxCAZMusicGlobal \clef "bass"

}
DDxCAZMusicLHB = \relative c{ \DDxCAZMusicGlobal \clef "bass"

}
DDxCAZMusicLH = \partCombine #'(2.20) \DDxCAZMusicLHA\DDxCAZMusicLHB

DDxCAZMusicLyrics = \relative c''''{ \DDxCAZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 ct4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2.
}


DExAHEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key as \major
\partial 4

}

DExAHEMusicRHA = \relative c'{ \DExAHEMusicGlobal \clef "treble"
aes'4 |  \nbp g aes f aes | %2
\nbp ees2. \lbp c'4 | %3
\nbp bes aes g aes | %4
\nbp bes2. \lbp ees,4 | %5
\nbp aes bes c c | des c \fpre bes \fpost \lbp c | %7
\nbp bes aes g bes \pcAO | %8
\nbp aes2. \cfb aes4 \postCho | %9
\nbp des4. des8 aes4 bes | %10
\nbp c2. \lbp bes4 | %11
\nbp bes4. bes8 aes4 bes | %12
\nbp c2. \lbp c4 | %13
\nbp c4. ees8 ees4 aes, | %14
bes c \fpre des \fpost \lbp des |  \nbp c aes g bes \nbp aes2. \he
}
DExAHEMusicRHB = \relative c'{ \DExAHEMusicGlobal \clef "treble"
c4 | des ees des des | c2. ees4 | %3
ees ees ees d | ees2. des4 | %5
c ees ees ees | ees ees ees ees | %7
g ees ees g | aes2. ges4 | f4. f8 f4 fes | %10
ees2. ees4 | ees4. ees8 ees4 g | %12
aes2. aes4 | aes4. aes8 aes4 ees | %14
ees aes aes aes | aes ees ees des c2.
}
DExAHEMusicRH = \partCombine #'(2.20) \DExAHEMusicRHA\DExAHEMusicRHB
DExAHEMusicLHA = \relative c{ \DExAHEMusicGlobal \clef "bass"
ees4 | ees aes aes f | aes2. aes4 | %3
g aes bes bes | bes2. bes4 | %5
aes g aes \pcAO aes | %6
bes \pcAO aes g aes | des c bes des | %8
c2. c4 | aes4. aes8 aes4 aes | aes2. g4 | %11
g4. g8 c4 ees | ees2. ees4 | %13
ees4. c8 c4 c | des ees des f | %15
ees c bes g aes2.
}
DExAHEMusicLHB = \relative c{ \DExAHEMusicGlobal \clef "bass"
aes4 | bes c des des | aes2. aes4 | %3
bes c ees f | g2. g4 | f ees aes, aes' | %6
g aes \fpre ees \fpostbelow ees | ees ees ees ees | %8
aes,2. aes'4 | des,4. des8 des4 des | %10
aes2. ees'4 | ees4. ees8 ees4 ees | %12
aes2. aes4 | aes4. aes8 aes4 aes | %14
g ges \fpre f \fpostbelow des | ees ees ees ees aes,2.
}
DExAHEMusicLH = \partCombine #'(2.20) \DExAHEMusicLHA\DExAHEMusicLHB

DExAHEMusicLyrics = \relative c''''{ \DExAHEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}


DFxABGMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key as \major

}

DFxABGMusicRHA = \relative c'{ \DFxABGMusicGlobal \clef "treble"
c'4. bes8 aes8. g16 aes8. f16 | %1
\nbp ees2 aes | bes4. bes8 aes4 bes | %3
\nbp c2. r4 \postSegnoMark | %4
c4. bes8 aes8. g16 aes8. f16 | %5
\nbp ees2 aes | bes4. aes8 c4 bes | %7
\nbp aes2. r4 \postFine \cbp | %8
ees'2 \postCho c | bes4. (aes8) f2 | %10
ees4 aes c aes \nbp bes2. \postDS \he
}
DFxABGMusicRHB = \relative c'{ \DFxABGMusicGlobal \clef "treble"
ees4. ees8 f8. e16 f8. des16 | c2 ees | %2
ees4. ees8 ees4 ees | ees2. r4 | %4
ees4. ees8 f8. e16 f8. des16 | c2 ees | %6
ees4. ees8 ees4 des | c2. r4 | aes'2 aes | %9
f des | c4 c ees ees ees2.
}
DFxABGMusicRH = \partCombine #'(2.20) \DFxABGMusicRHA\DFxABGMusicRHB
DFxABGMusicLHA = \relative c{ \DFxABGMusicGlobal \clef "bass"
aes'4. aes8 aes8. aes16 aes8. aes16 | %1
aes2 c | des4. des8 c4 g | aes2. r4 | %4
aes4. aes8 aes8. aes16 aes8. aes16 | %5
aes2 c | des4. c8 aes4 g | aes2. r4 | %8
c2 ees | des aes | aes4 aes aes aes g2.
}
DFxABGMusicLHB = \relative c{ \DFxABGMusicGlobal \clef "bass"
aes4. c8 des8. des16 des8. des16 | %1
aes2 aes | ees'4. ees8 ees4 ees | %3
aes,2. r4 | %4
aes4. c8 des8. des16 des8. des16 | %5
aes2 aes | ees'4. ees8 ees4 ees | %7
aes,2. r4 | aes'2 aes | des, des | %10
aes4 aes aes c ees2.
}
DFxABGMusicLH = \partCombine #'(2.20) \DFxABGMusicLHA\DFxABGMusicLHB

DFxABGMusicLyrics = \relative c''''{ \DFxABGMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c4 c4 c2. cr4 c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c4 c4 c2. cr4 c2 c2 c4. ct8 c2 c4 c4 c4 c4 c2. c\chorusbelow13 c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c4 c4 c2.
}


DGxAHFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

DGxAHFMusicRHA = \relative c'{ \DGxAHFMusicGlobal \clef "treble"

}
DGxAHFMusicRHB = \relative c'{ \DGxAHFMusicGlobal \clef "treble"

}
DGxAHFMusicRH = \partCombine #'(2.20) \DGxAHFMusicRHA\DGxAHFMusicRHB
DGxAHFMusicLHA = \relative c{ \DGxAHFMusicGlobal \clef "bass"

}
DGxAHFMusicLHB = \relative c{ \DGxAHFMusicGlobal \clef "bass"

}
DGxAHFMusicLH = \partCombine #'(2.20) \DGxAHFMusicLHA\DGxAHFMusicLHB

DGxAHFMusicLyrics = \relative c''''{ \DGxAHFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 ct4 c4 c4 ct4 c4 c4 c4 c4 c2 c4 c4 ct4 c4 c4 c4 c4 c4 c4 c4 c2 c4 c4 ct4 c4 c2 c4 c4 ct4 c4 c4 c4 c4 c2 c4 c2 c4 c4 ct4 c4 c2
}


DHxHIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key f \major

}

DHxHIMusicRHA = \relative c'{ \DHxHIMusicGlobal \clef "treble"
\pcAO c8 f g a4 a16 a | bes8 f g a4. | %2
c8 g a bes8. a16 bes8 | %3
d c bes a4. \pcAO | c,8 f g a8. aes16 a8 | %5
bes f g a4. | %6
g8. g16 g8 c \pcAO e, \pcAO e | %7
g f d \pcAO c4. \cbp | %8
a'8 \postCho r r16 a r4 r8 \pcAO | %9
f \pcAO a8. \pcAO f16 \pcAO a4. | %10
d8. d16 d8 c a f | f e f g4. \pcAO | %12
c,8 f g a8. aes16 a8 | bes f g a4. | %14
bes8 c d c8. a16 \pcAO \fpre f8 \fpost a a g \pcAO f4. \he
}
DHxHIMusicRHB = \relative c'{ \DHxHIMusicGlobal \clef "treble"
c8 c c f4 f16 f | f8 d f f4. | %2
e8 e f g8. ges16 g8 | bes a g f4. | %4
c8 c c f8. f16 f8 | f d f f4. | %6
e8. e16 e8 e e e | b b b c4. | %8
f8 c'8. f,16 c'4. | f,8 a8. f16 a4. | %10
f8. f16 f8 f c d | d d d e4. | %12
c8 c c f8. f16 f8 | f d f f4. | %14
f8 f f f8. f16 f8 f e e f4.
}
DHxHIMusicRH = \partCombine #'(2.20) \DHxHIMusicRHA\DHxHIMusicRHB
DHxHIMusicLHA = \relative c{ \DHxHIMusicGlobal \clef "bass"
a'8 a bes c4 c16 c | %1
d8 \pcAO f, des' c4. | c8 c c c8. c16 c8 | %3
c c c c4. | a8 a bes c8. b16 c8 | %5
d \pcAO f, des' c4. | %6
c8. c16 c8 \pcAO g c c | %7
g d f e4. \pcAO | %8
f8 \pcAO f8. \pcAO f16 \pcAO f4. | %9
a8 c8. a16 c4. | bes8. bes16 bes8 a a a | %11
b b b bes4. | a8 a bes c8. b16 c8 | %13
d \pcAO f, des' c4. | %14
bes8 a bes a8. c16 b8 c c bes a4.
}
DHxHIMusicLHB = \relative c{ \DHxHIMusicGlobal \clef "bass"
f8 f f f4 f16 f | f8 f f f4. | %2
c8 c c c8. c16 c8 | c d e f4. | %4
f8 f f f8. f16 f8 | f f f f4. | %6
g8. g16 g8 g g g | g, g g c4. | %8
f8 f8. f16 f4. | f8 f8. f16 f4. | %10
bes,8. bes16 bes8 f' f d | g, g g c4. | %12
f8 f f f8. f16 f8 | f f f f4. | %14
d8 c bes c8. c16 \fpre d8 \fpostbelow c c c f4.
}
DHxHIMusicLH = \partCombine #'(2.20) \DHxHIMusicLHA\DHxHIMusicLHB

DHxHIMusicLyrics = \relative c''''{ \DHxHIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4 c16 c16 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4.
}


DIxAAFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\partial 4

}

DIxAAFMusicRHA = \relative c'{ \DIxAAFMusicGlobal \clef "treble"
g'4 |  \nbp g2 f4 e \pcAO | e2 d4 e | %3
f (a) g f \pcAO |  \nbp e2. \lbp g4 | %5
\nbp c2 b4 a | a2 g4 fis | %7
\nbp g2. \lbp g4 |  \nbp c2 c4 b | %9
a2 \pcAO a4 a | d2 d4 c | %11
\nbp b2 \lbp a4 \pcAO g | %12
\nbp c2 c4 c | c2 b4. c8 | %14
\nbp \fpre c2 \fpost \cbp \pcAO g4 \postCho \pcAO g | %15
g1~ \nbp | g2 \lbp \pcAO g4 \pcAO g | g1~ | \nbp  %18
g2 \lbp e4 g |  \nbp a2 a4 c | %20
c2 b4. c8 c2. \he
}
DIxAAFMusicRHB = \relative c'{ \DIxAAFMusicGlobal \clef "treble"
e4 | e2 d4 c | e2 b4 c | c2 b4 d | %4
e2. e4 | e2 d4 c | e2 d4 d | d2. f4 | %8
e2 e4 g | f2 a4 g | f2 f4 fis | g2 g4 g | %12
g2 c,4 d | e2 d4. e8 | e2 g4 g | %15
r2 e4 e | d2 g4 g | r2 d4 f | e2 c4 e | %19
f2 f4 f | e2 d4. e8 e2.
}
DIxAAFMusicRH = \partCombine #'(2.20) \DIxAAFMusicRHA\DIxAAFMusicRHB
DIxAAFMusicLHA = \relative c{ \DIxAAFMusicGlobal \clef "bass"
g'4 | g2 g4 g | c2 g4 g | a (f) g b | %4
c2. g4 | a2 gis4 a | c2 b4 a | b2. b4 | %8
c2 c4 c | c2 c4 cis | d2 d4 d | d2 c4 b | %12
c2 g4 a \pcAO | g2 g4. g8 | g2 r | %15
r g4 c | b2 r1 b4 d | c2 g4 c | %19
c2 c4 a \pcAO | g2 g4. g8 g2.
}
DIxAAFMusicLHB = \relative c{ \DIxAAFMusicGlobal \clef "bass"
c4 | c2 c4 c8 [e] | g2 f4 e | %3
d2 g,4 g | c2. c4 | a2 b4 c | c2 d4 d | %7
g,2. g'4 | c,2 c4 e | f2 f4 e | d2 d4 d | %11
g2 g4 g8 [f] | e2 e4 f | g2 g,4. c8 | %14
\fpre c2 \fpostbelow r | r c4 e | g2 r1 g,4 g | c2 c4 c | %19
f2 f4 f | g2 g,4. c8 c2.
}
DIxAAFMusicLH = \partCombine #'(2.20) \DIxAAFMusicLHA\DIxAAFMusicLHB

DIxAAFMusicLyrics = \relative c''''{ \DIxAAFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2 c4 c4 c1. c4 c4 c1. c4 c4 c2 c4 c4 c2 c4. c8 c2
}


EZxBAEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key c \major
\partial 4*3

}

EZxBAEMusicRHA = \relative c'{ \EZxBAEMusicGlobal \clef "treble"
g'4 a e | g2 (a)~| \nbp  %2
a4 \lbp \pcAO c, f \pcAO c |  \nbp e1~| \nbp  %4
e4 \pcAO \lbp c \pcAO b \pcAO c | %5
d1~| \nbp d4 \lbp a' g f |  \nbp e1~| \nbp %8
e4 \lbp g a e | g2 a~ \nbp | %10
a4 \lbp \pcAO c, f \pcAO c |  \nbp e1~| \nbp  %12
e4 \lbp g a c | b1~ \nbp | b4 a g \pcAp b, | %15
\nbp c1~| \nbp c4 \pcAu \lbp e f g | %17
a4. b8 c2~ \nbp | c4 \lbp c b a | %19
a4. g8 g2~ \nbp | g4 \lbp g f e | %21
g4. d8 d2~ \nbp | d4 \lbp a' g f | %23
f4. e8 e2~ \nbp| e4 \lbp e f g | %25
a4. b8 c2~ \nbp | c4 \lbp c b a | %27
a4. g8 g2~ \nbp | g4 \lbp g f e | %29
g4. d8 d2~\nbp | d4 \lbp f e d \pcAp | %31
\nbp c1~ \nbp c4 \he
}
EZxBAEMusicRHB = \relative c'{ \EZxBAEMusicGlobal \clef "treble"
e4 e c | e2 (e)~| e4 c c c | c1~| %4
c4 c b c | b1~| b4 b b b | c1~| %8
c4 e e c | e2 (e2~| e4) c c c | c1~| %12
c4 e e e | f1~| f4 f f b, | c1~| %16
c4 c d e | f4. g8 a2~| a4 a g f | %19
f4. e8 e2~| e4 e d c | b4. b8 b2~| %22
b4 f' e d | d4. c8 c2~| c4 c d e | %25
f4. g8 a2~| a4 a g f | f4. e8 e2~| %28
e4 e d c | b4. b8 b2~| b4 b b b | %31
c1~c4
}
EZxBAEMusicRH = \partCombine #'(2.20) \EZxBAEMusicRHA\EZxBAEMusicRHB
EZxBAEMusicLHA = \relative c{ \EZxBAEMusicGlobal \clef "bass"
c'4 c g | c1~| c4 a a aes | g1~| %4
g4 e ees e | f1~| f4 f e d | g1~| %8
g4 c c g | c1~| c4 a a aes | g1~| %12
g4 c c c | d1~| d4 c b b | e,1~| %16
e4 g g c | c4. c8 f2~| f4 f c c | %19
c4. c8 c2~| c4 c g g | g4. g8 g2~| %22
g4 g g g | g4. g8 g2~| g4 g g c | %25
c4. c8 f2~| f4 f c c | c4. c8 c2~| %28
c4 c g g | g4. g8 g2~| g4 g g f | %31
e1~e4
}
EZxBAEMusicLHB = \relative c{ \EZxBAEMusicGlobal \clef "bass"
c4 c c | c1~| c4 f f f | c1~| %4
c4 c c c | g1~| g4 g g g | c1~| %8
c4 c c c | c1~| c4 f f f | c1~| %12
c4 c c c | g'1~| g4 g g g | c,1~| %16
c4 c c c | f4. f8 f2~| f4 f f f | %19
c4. c8 c2~| c4 c c c | g4. g8 g2~| %22
g4 g g g | c4. c8 c2~| c4 c c c | %25
f4. f8 f2~| f4 f f f | c4. c8 c2~| %28
c4 c c c | g4. g8 g2~| g4 g g g | %31
c1~c4
}
EZxBAEMusicLH = \partCombine #'(2.20) \EZxBAEMusicLHA\EZxBAEMusicLHB

EZxBAEMusicLyrics = \relative c''''{ \EZxBAEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c2 ct2 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c2 c2 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c1 ct4 c4 c4 c4 c4. c8 c2 ct4 c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c1 ct4
}


EAxCFMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 2/4
\key as \major

}

EAxCFMusicRHA = \relative c'{ \EAxCFMusicGlobal \clef "treble"
ees4 d8 ees | f4. ees8 | ees c' bes aes | %3
\nbp aes4 g | bes g8 aes | %5
bes4 c \pcAO | ees,8 \pcAO ees g8. f16 | %7
\nbp ees2 | ees4 d8 ees | f4. ees8 | %10
aes c ees des |  \nbp c4 bes | %12
ees des8 c | f,4 bes | %14
aes8 g c8. bes16 \pcAO \nbp aes2 \he
}
EAxCFMusicRHB = \relative c'{ \EAxCFMusicGlobal \clef "treble"
c4 b8 c | des4. c8 | c ees ees ees | %3
ees4 ees | ees ees8 ees | ees4 ees | %6
ees8 ees d8. d16 | ees4 (des) | c b8 c | %9
des4. c8 | ees ees ees f | ees4 ees | %12
ees ees8 ees | des4 f | ees8 ees g8. g16 aes2
}
EAxCFMusicRH = \partCombine #'(2.20) \EAxCFMusicRHA\EAxCFMusicRHB
EAxCFMusicLHA = \relative c{ \EAxCFMusicGlobal \clef "bass"
aes'4 aes8 aes | aes4. aes8 | %2
aes aes aes aes | c4 bes | g bes8 c | %5
g4 aes | g8 g bes8. aes16 | g2 | %8
aes4 aes8 aes | aes4. aes8 | %10
aes aes aes aes | aes4 g | aes g8 aes | %13
aes4 des | c8 bes ees8. des16 c2
}
EAxCFMusicLHB = \relative c{ \EAxCFMusicGlobal \clef "bass"
aes4 aes8 aes | aes4. aes8 | aes aes c c | %3
ees4 ees | ees ees8 ees | ees4 aes, | %6
bes8 bes bes8. bes16 | ees2 | %8
aes,4 aes8 aes | aes4. aes8 | %10
c aes c des | ees4 ees | c bes8 aes | %13
des4 bes | ees8 ees ees8. ees16 aes,2
}
EAxCFMusicLH = \partCombine #'(2.20) \EAxCFMusicLHA\EAxCFMusicLHB

EAxCFMusicLyrics = \relative c''''{ \EAxCFMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2
}


EBxDBMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

EBxDBMusicRHA = \relative c'{ \EBxDBMusicGlobal \clef "treble"

}
EBxDBMusicRHB = \relative c'{ \EBxDBMusicGlobal \clef "treble"

}
EBxDBMusicRH = \partCombine #'(2.20) \EBxDBMusicRHA\EBxDBMusicRHB
EBxDBMusicLHA = \relative c{ \EBxDBMusicGlobal \clef "bass"

}
EBxDBMusicLHB = \relative c{ \EBxDBMusicGlobal \clef "bass"

}
EBxDBMusicLH = \partCombine #'(2.20) \EBxDBMusicLHA\EBxDBMusicLHB

EBxDBMusicLyrics = \relative c''''{ \EBxDBMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c4. c4 c8 c8 ct8 c8 c4 c8 c8 c8 c8 c4 c8 c8 ct8 c8 c4 c8 c4. ct4 c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c4. ct4 c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c8 ct8 c8 c4 c8 c4. ct4
}


ECxAIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key es \major

}

ECxAIMusicRHA = \relative c'{ \ECxAIMusicGlobal \clef "treble"
\pcAO ees4 f8 g4 bes8 | %1
c4 bes8 g bes4 \pcAO | ees, f8 bes4 g8 | %3
f4 f8 \pcAO ees4. \pcAO | %4
ees4 f8 g4 bes8 | c4 bes8 g bes4 | %6
c bes8 g4 g8 | f4 g8 \pcAO ees4. \cbp | %8
bes'4 \postCho bes8 c ees4 | %9
ees4. c8 bes4 | bes bes8 c4 ees8 | %11
c [bes] g f4. \pcAO | ees4 f8 g4 bes8 | %13
c4 bes8 g bes4 \pcAO | ees, f8 g [\fpre bes] \fpost  g f4 g8 \pcAO ees4. \he
}
ECxAIMusicRHB = \relative c'{ \ECxAIMusicGlobal \clef "treble"
ees4 d8 ees4 g8 | aes4 g8 ees g4 | %2
ees ees8 d4 ees8 | d4 d8 ees4. | %4
ees4 d8 ees4 g8 | aes4 g8 ees g4 | %6
aes g8 ees4 ees8 | d4 d8 ees4. | %8
g4 g8 aes aes4 | c4. aes8 g4 | %10
g g8 aes4 aes8 | aes [g] ees d4. | %12
ees4 d8 ees4 g8 | aes4 g8 ees g4 | %14
ees d8 ees [g] ees d4 d8 ees4.
}
ECxAIMusicRH = \partCombine #'(2.20) \ECxAIMusicRHA\ECxAIMusicRHB
ECxAIMusicLHA = \relative c{ \ECxAIMusicGlobal \clef "bass"
g'4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %2
g, a8 bes4 bes8 | aes4 aes8 g4. | %4
g4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %6
ees ees8 bes4 bes8 | aes4 bes8 g4. | %8
ees'4 ees8 ees c4 | ees4. ees8 ees4 | %10
ees ees8 ees4 c8 | ees4 bes8 bes4. | %12
g4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %14
bes bes8 bes [bes] bes aes4 bes8 g4.
}
ECxAIMusicLHB = \relative c{ \ECxAIMusicGlobal \clef "bass"
ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %2
ees c8 bes4 bes8 | bes4 bes8 ees4. | %4
ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %6
ees ees8 ees4 g,8 | bes4 bes8 ees4. | %8
ees4 ees8 aes aes4 | aes4. ees8 ees4 | %10
ees ees8 aes4 aes8 | ees4 ees8 bes4. | %12
ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %14
g f8 ees [ \fpre ees] \fpostbelow g, bes4 bes8 ees4.
}
ECxAIMusicLH = \partCombine #'(2.20) \ECxAIMusicLHA\ECxAIMusicLHB

ECxAIMusicLyrics = \relative c''''{ \ECxAIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c8 c4 c4. c8 c4 c4 c8 c4 c8 c8 c8 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c8 c8 c8 c4 c8 c4.
}


EDxAZEMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key g \major

}

EDxAZEMusicRHA = \relative c'{ \EDxAZEMusicGlobal \clef "treble"
b'4. b8 a8. g16 b8. a16 | g2 g4 r | %2
c4. c8 b8. a16 g8. b16 |  \nbp a2. r4 | %4
b4. a8 g8. g16 d8. dis16 | %5
\nbp e2 g4 \lbp fis8. e16 | %6
\nbp d4 b' b a |  \nbp g2. r4 \cbp | %8
a4. \postCho a8 b8. a16 g8. a16 | %9
\nbp b2 g | c4. c8 b8. a16 g8. b16 | %11
\nbp a2. r4 | b4. a8 g8. g16 d8. dis16 | %13
\nbp e2 \fpre g4 \fpost \lbp fis8 e | %14
\nbp d4 b' b a \nbp g2. r4 \he
}
EDxAZEMusicRHB = \relative c'{ \EDxAZEMusicGlobal \clef "treble"
d4. d8 d8. d16 d8. c16 | b2 b4 r | %2
e4. e8 d8. c16 b8. d16 | d2. r4 | %4
d4. c8 b8. b16 b8. b16 | c2 e4 d8. c16 | %6
b4 d d c | b2. r4 | %8
c4. c8 d8. c16 c8. c16 | d2 d | %10
e4. e8 d8. d16 d8. d16 | d2. r4 | %12
d4. c8 b8. b16 b8. b16 | c2 e4 d8 c | %14
b4 d d c b2. r4
}
EDxAZEMusicRH = \partCombine #'(2.20) \EDxAZEMusicRHA\EDxAZEMusicRHB
EDxAZEMusicLHA = \relative c{ \EDxAZEMusicGlobal \clef "bass"
g'4. g8 fis8. g16 g8. fis16 | g2 g4 r | %2
g4. g8 g8. g16 g8. g16 | fis2. r4 | %4
g4. g8 g8. g16 g8. g16 | g2 c4 g8. g16 | %6
g4 g fis fis | g2. r4 | %8
fis4. fis8 g8. fis16 e8. fis16 | g2 g | %10
g4. g8 g8. fis16 g8. g16 | fis2. r4 | %12
g4. g8 g8. g16 g8. g16 | g2 c4 g8 g | %14
g4 g fis fis g2. r4
}
EDxAZEMusicLHB = \relative c{ \EDxAZEMusicGlobal \clef "bass"
g4. g8 d'8. d16 d8. d16 | g,2 g4 r | %2
c4. c8 g8. g16 g8. g16 | d'2. r4 | %4
g,4. g8 g8. g16 g8. g16 | c2 c4 c8. c16 | %6
d4 d d d | g,2. r4 | %8
d'4. d8 d8. d16 d8. d16 | g,2 b | %10
c4. c8 g8. a16 b8. g16 | d'2. r4 | %12
g,4. g8 g8. g16 g8. g16 | c2 \fpre c4 \fpostbelow c8 c | %14
d4 d d d g,2. r4
}
EDxAZEMusicLH = \partCombine #'(2.20) \EDxAZEMusicLHA\EDxAZEMusicLHB

EDxAZEMusicLyrics = \relative c''''{ \EDxAZEMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4. c8 c8. c16 c8. c16 c2 c4 cr4 c4. c8 c8. c16 c8. c16 c2. cr4 c4. c8 c8. c16 c8. c16 c2 c4 c8. c16 c4 c4 c4 c4 c2. cr4 c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c8. c16 c8. c16 c2. cr4 c4. c8 c8. c16 c8. c16 c2 c4 c8 c8 c4 c4 c4 c4 c2.
}


EExACMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key g \major

}

EExACMusicRHA = \relative c'{ \EExACMusicGlobal \clef "treble"
b'4 b b | a2 b4 | c2 fis,4 | %3
\nbp g2. \pcAO | d4 \pcAO d \pcAO d | %5
b'2 a4 |  \nbp a2. | c4 c b | a2 g4 | %9
fis2 e4 \pcAO |  \nbp d2. \pcAO | %11
d4 e g | b2 a4 \nbp g2. \he
}
EExACMusicRHB = \relative c'{ \EExACMusicGlobal \clef "treble"
d4 d d | e2 d4 | c (e) d | d2. | %4
d4 d d | d2 cis4 | d2. | e4 e d | %8
c2 cis4 | d2 cis4 | d2. | d4 d c | %12
b2 c4 b2.
}
EExACMusicRH = \partCombine #'(2.20) \EExACMusicRHA\EExACMusicRHB
EExACMusicLHA = \relative c{ \EExACMusicGlobal \clef "bass"
b'4 b g | c2 g4 | a2 a4 | b2. | %4
c4 b a \pcAO | g2 g4 | fis2. | %7
e4 fis gis | a2 a4 | a2 g4 | fis2. | %11
g4 g g | g2 fis4 g2.
}
EExACMusicLHB = \relative c{ \EExACMusicGlobal \clef "bass"
g'4 g b, | c2 b4 | a2 d4 | g2. | %4
a4 g fis | g2 e4 | d2. | a4 a a | %8
a2 a4 | d2 d4 | d2 (c4) | b c e | %12
d2 d4 g,2.
}
EExACMusicLH = \partCombine #'(2.20) \EExACMusicLHA\EExACMusicLHB

EExACMusicLyrics = \relative c''''{ \EExACMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2.
}


EFxBDDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key g \major
\partial 4

}

EFxBDDMusicRHA = \relative c'{ \EFxBDDMusicGlobal \clef "treble"
g'8 [a] |  \nbp b4. b8 a4 \pcAO g | %2
a g e \lbp g \pcAO |  \nbp d g g b | %4
\nbp a2. \lbp g8 [a] | %5
\nbp b4. b8 a4 g | a g e \lbp g \pcAO | %7
\nbp d b' b4. a8 |  \nbp g2. \lbp g4 | %9
\nbp a4. a8 b4 d | e4. e8 d4 \lbp b | %11
\nbp d b a g |  \nbp a2. \lbp g8 (a) | %13
\nbp b4. b8 a4 g | a g e \lbp g \pcAO | %15
\nbp d b' b4. a8 \nbp g2. \he
}
EFxBDDMusicRHB = \relative c'{ \EFxBDDMusicGlobal \clef "treble"
d4 | g4. g8 fis4 g | e e c c | d d d d | %4
d2. d8 [d] | d4. d8 c4 b | e e c c | %7
d d d4. c8 | b2. d4 | fis4. fis8 g4 g | %10
g4. g8 g4 g | g d d cis | d2. d8 (d) | %13
d4. d8 c4 b | e e c c | d d d4. c8 b2.
}
EFxBDDMusicRH = \partCombine #'(2.20) \EFxBDDMusicRHA\EFxBDDMusicRHB
EFxBDDMusicLHA = \relative c{ \EFxBDDMusicGlobal \clef "bass"
b'8 [c] | d4. d8 c4 b | c c g e | %3
g g g g | fis2. g8 [fis] | %5
g4. g8 fis4 g | g c g e | g g g4. fis8 | %8
g2. b4 | d4. d8 d4 b | c4. c8 b4 d | %11
b \pcAO g a a | fis2. g8 (fis) | %13
g4. g8 fis4 g | g c g e | g g g4. fis8 g2.
}
EFxBDDMusicLHB = \relative c{ \EFxBDDMusicGlobal \clef "bass"
g'4 | g4. g8 d4 e | c c c c | b b b g | %4
d'2. b8 [a] | g4. g8 d'4 e | c c c c | %7
b g d'4. d8 | g,2. g'4 | d4. d8 g4 g | %10
c,8 [d e] fis g4 g | g g fis e | %12
d2~d8 [c] b (a) | g4. g8 d'4 e | %14
c c c c | b g d'4. d8 g,2.
}
EFxBDDMusicLH = \partCombine #'(2.20) \EFxBDDMusicLHA\EFxBDDMusicLHB

EFxBDDMusicLyrics = \relative c''''{ \EFxBDDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 ct8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c8 ct8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2. c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c8 ct8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2.
}


EGxFIMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/2
\key es \major
\partial 2

}

EGxFIMusicRHA = \relative c'{ \EGxFIMusicGlobal \clef "treble"
bes'2 |  \nbp bes2. bes4 g f \pcAO | %2
ees4. f8 g2 \breathe \lbp bes | %3
\nbp c2. c4 aes g \pcAO | %4
f4. g8 aes2 \breathe \lbp bes | %5
\nbp d2. bes4 c d | %6
ees4. g,8 bes2 \breathe \lbp g | %7
\nbp bes2. \pcAO bes,4 c ees f4. ees8 \fpre ees2 \fpost \he
}
EGxFIMusicRHB = \relative c'{ \EGxFIMusicGlobal \clef "treble"
ees2 | ees2. ees4 ees ees | %2
ees4. ees8 ees2 ees | ees2. ees4 f f | %4
f4. f8 f2 f | f2. f4 f f | %6
ees4. ees8 ees2 ees | ees2. bes4 bes bes bes4. bes8 bes2
}
EGxFIMusicRH = \partCombine #'(2.20) \EGxFIMusicRHA\EGxFIMusicRHB
EGxFIMusicLHA = \relative c{ \EGxFIMusicGlobal \clef "bass"
g'2 | g2. g4 bes aes | g4. aes8 bes2 g | %3
g2. c4 c bes | aes4. bes8 c2 d | %5
bes2. d4 ees bes | bes4. bes8 g2 bes | %7
g2. g4 aes g aes4. g8 g2
}
EGxFIMusicLHB = \relative c{ \EGxFIMusicGlobal \clef "bass"
ees2 | ees2. ees4 ees ees | %2
ees4. ees8 ees2 ees | c2. c4 f f | %4
f4. f8 f2 bes | bes,2. bes'4 a aes | %6
g4. ees8 ees2 ees | bes2. bes4 bes bes bes4. ees8 \fpre ees2 \fpostbelow
}
EGxFIMusicLH = \partCombine #'(2.20) \EGxFIMusicLHA\EGxFIMusicLHB

EGxFIMusicLyrics = \relative c''''{ \EGxFIMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c2. c4 c4 c4 c4. c8 c2 c2 c2. c4 c4 c4 c4. c8 c2 c2 c2. c4 c4 c4 c4. c8 c2 c2 c2. c4 c4 c4 c4. c8 c2
}


EHxBHDMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key des \major
\partial 8

}

EHxBHDMusicRHA = \relative c'{ \EHxBHDMusicGlobal \clef "treble"
f8 |  \nbp f8. ges16 aes4. des,8 | %2
c8. des16 ees4. \lbp ges8 | %3
\nbp ges8. ges16 c4. bes8 | %4
bes8. aes16 aes4. \lbp f8 | %5
\nbp f8. ees16 des4. des8 | %6
ges bes aes4. \lbp aes8 | %7
\nbp bes des f,4. \pcAO des8 | %8
f ees \pcAO des4. \cbp des'8 \postCho | %9
\nbp des8. c16 c4. bes8 | %10
bes8. aes16 aes4. \lbp des8 | %11
\nbp des8. c16 c4. bes8 | %12
aes8. g16 aes4. \lbp ges8 | %13
\nbp f8. ees16 \pcAO des4. \pcAO des8 | %14
ges bes des4. \lbp des8 | %15
\nbp c8. bes16 aes4. \pcAO des,8 f8. ees16 \pcAO des4. \he
}
EHxBHDMusicRHB = \relative c'{ \EHxBHDMusicGlobal \clef "treble"
des8 | des8. ees16 f4. aes,8 | %2
aes8. aes16 c4. ees8 | %3
ees8. ees16 ges4. ges8 | %4
ges8. f16 f4. des8 | des8. c16 bes4. b8 | %6
bes ges' f4. f8 | ges ges des4. des8 | %8
des c des4. f8 | ges8. ges16 ges4. des8 | %10
des8. des16 des4. des8 | %11
des8. ees16 ees4. ees8 | %12
ees8. ees16 ees4. ees8 | %13
des8. des16 des4. des8 | %14
des ges ges4. bes8 | aes8. ges16 f4. des8 des8. c16 des4.
}
EHxBHDMusicRH = \partCombine #'(2.20) \EHxBHDMusicRHA\EHxBHDMusicRHB
EHxBHDMusicLHA = \relative c{ \EHxBHDMusicGlobal \clef "bass"
aes'8 | aes8. aes16 des4. f,8 | %2
ees8. f16 aes4. c8 | %3
c8. c16 \pcAO aes4. c8 | %4
des8. des16 des4. aes8 | %5
aes8. ges16 f4. f8 | ges des' des4. des8 | %7
des bes \pcAO aes4. f8 | %8
aes ges f4. aes8 | bes8. aes16 aes4. ges8 | %10
ges8. f16 f4. f8 | bes8. aes16 aes4. des8 | %12
c8. bes16 c4. c8 | aes8. ges16 f4. f8 | %14
ges des' bes4. des8 | %15
des8. des16 des4. f,8 aes8. ges16 f4.
}
EHxBHDMusicLHB = \relative c{ \EHxBHDMusicGlobal \clef "bass"
des8 | des8. des16 des4. des8 | %2
aes8. aes16 aes4. aes8 | %3
aes'8. aes16 aes4. aes8 | %4
des,8. des16 des4. des8 | %5
aes8. a16 bes4. aes8 | %6
ges ges des'4. des8 | ges ges aes4. aes,8 | %8
aes aes des4. des8 | %9
des8. des16 des4. des8 | %10
des8. des16 des4. des8 | %11
bes8. ees16 ees4. ees8 | %12
ees8. ees16 aes,4. aes8 | %13
des8. des16 des4. b8 | %14
bes ges ges'4. ges8 | %15
ges8. ges16 aes4. aes,8 aes8. aes16 des4.
}
EHxBHDMusicLH = \partCombine #'(2.20) \EHxBHDMusicLHA\EHxBHDMusicLHB

EHxBHDMusicLyrics = \relative c''''{ \EHxBHDMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4.
}


EIxBIAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key as \major
\partial 4

}

EIxBIAMusicRHA = \relative c'{ \EIxBIAMusicGlobal \clef "treble"
ees8 [aes] |  \nbp c4. bes8 c4 | %2
des4. c8 bes4 | ees,2 (aes4) | %4
\nbp c2 \lbp aes4 |  \nbp bes4. c8 des4 | %6
g,4. f8 g4 |  \nbp aes2.~| %8
\nbp aes2 \lbp ees8 [aes] | %9
\nbp c4. bes8 c4 | des4. c8 bes4 | %11
ees,2 (aes4) |  \nbp c2 \lbp aes4 | %13
\nbp bes4. c8 des4 | g,4. f8 g4 | %15
\nbp aes2.~|  \nbp aes2 \lbp aes4 | %17
\nbp bes4. bes8 bes4 | ees,4. ees8 des'4 | %19
\nbp c2. |  \nbp aes2 \lbp bes8 [c] | %21
\nbp des4. des8 des4 | c4. c8 c4 | %23
\nbp bes2.~| %24
\nbp bes2 \lbp ees,8 [aes] | %25
\nbp c4. bes8 c4 | des4. c8 bes4 | %27
ees,2 (aes4) |  \nbp c2 \lbp aes4 | %29
\nbp bes4. c8 des4 | g,4. f8 g4 | %31
\nbp aes2.~\nbp aes2 \he
}
EIxBIAMusicRHB = \relative c'{ \EIxBIAMusicGlobal \clef "treble"
c4 | ees4. ees8 ees4 | ees4. ees8 des4 | %3
c2. | ees2 ees4 | ees4. ees8 ees4 | %6
ees4. d8 des4 | c2.~| c2 ees4 | %9
aes4. g8 aes4 | g4. g8 g4 | ees2. | %12
aes2 ees4 | g4. aes8 g4 | ees4. d8 des4 | %15
c2.~| c2 c4 | bes4. bes8 bes4 | %18
bes4. c8 ees4 | ees2. | f2 ees4 | %21
g4. ees8 ees4 | ees4. c8 d4 | ees2.~| %24
ees2 c4 | ees4. ees8 ees4 | %26
ees4. ees8 des4 | c2. | ees2 ees4 | %29
ees4. ees8 ees4 | ees4. d8 des4 | c2.~c2
}
EIxBIAMusicRH = \partCombine #'(2.20) \EIxBIAMusicRHA\EIxBIAMusicRHB
EIxBIAMusicLHA = \relative c{ \EIxBIAMusicGlobal \clef "bass"
aes'4 | aes4. g8 aes4 | g4. aes8 g4 | %3
aes2. | aes2 c4 | bes4. \pcAO aes8 bes4 | %6
bes4. bes8 bes4 | aes2.~| aes2 c4 | %9
ees4. ees8 ees4 | ees4. ees8 des4 | %11
c (aes c) | ees2 \pcAO c4 | %13
ees4. ees8 ees4 | bes4. bes8 bes4 | %15
aes2.~| aes2 aes4 | f4. f8 f4 | %18
g4. aes8 g4 | aes2. | c2 bes8 [ees] | %21
ees4. bes8 g4 | aes4. aes8 aes4 | %23
bes2.~| bes2 aes4 | aes4. g8 aes4 | %26
g4. aes8 g4 | aes2. | aes2 c4 | %29
bes4. \pcAO aes8 bes4 | bes4. bes8 bes4 | %31
aes2.~aes2
}
EIxBIAMusicLHB = \relative c{ \EIxBIAMusicGlobal \clef "bass"
aes4 | aes4. ees'8 ees4 | %2
ees4. ees8 ees4 | aes,2. | aes2 aes'4 | %5
g4. aes8 g4 | ees4. f8 ees4 | aes,2.~| %8
aes2 aes'4 | aes4. des8 c4 | %10
bes4. ees,8 ees4 | aes2. | aes2 c4 | %13
des4. c8 bes4 | ees,4. bes8 ees4 | %15
aes,2.~| aes2 f'4 | des4. des8 des4 | %18
ees4. ees8 ees4 | aes,2. | %20
f'2 g8 [aes] | bes4. g8 ees4 | %22
ees4. ees8 f4 | g2.~| g2 aes,4 | %25
aes4. ees'8 ees4 | ees4. ees8 ees4 | %27
aes,2. | aes2 aes'4 | g4. aes8 g4 | %30
ees4. f8 ees4 | aes,2.~aes2
}
EIxBIAMusicLH = \partCombine #'(2.20) \EIxBIAMusicLHA\EIxBIAMusicLHB

EIxBIAMusicLyrics = \relative c''''{ \EIxBIAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 ct8 c4. c8 c4 c4. c8 c4 c2 ct4 c2 c4 c4. c8 c4 c4. c8 c4 c2. ct2 c8 ct8 c4. c8 c4 c4. c8 c4 c2 ct4 c2 c4 c4. c8 c4 c4. c8 c4 c2. ct2 c4 c4. c8 c4 c4. c8 c4 c2. c2 c8 ct8 c4. c8 c4 c4. c8 c4 c2. ct2 c8 ct8 c4. c8 c4 c4. c8 c4 c2 ct4 c2 c4 c4. c8 c4 c4. c8 c4 c2. ct2
}


FZxBZZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key c \major
\partial 4

}

FZxBZZMusicRHA = \relative c'{ \FZxBZZMusicGlobal \clef "treble"
\pcAO c8. e16 |  \nbp g4 c b a | %2
\nbp g e2 \lbp e8. e16 |  \nbp f4 f e d | %4
\nbp e2. \pcAO \lbp c8. e16 | %5
\nbp g4 c b a |  \nbp g e2 \lbp e8. e16 | %7
\nbp d4. d8 fis4. fis8 | %8
\nbp g2. \lbp g8. g16 | %9
\nbp g4 d e4. f8 | %10
\nbp f4 e2 \lbp g8. g16 | %11
\nbp g4 d e4. f8 | %12
\nbp e2. \lbp e8. f16 |  \nbp g4 e c' g | %14
\nbp a c2 \lbp a8. a16 | %15
\nbp g4. g8 a4 b | %16
\nbp c2. \cbp g8. \postCho g16 | %17
\nbp c2~c8. g16 b8. a16 | %18
\nbp g2 e4 \lbp g8. c16 | %19
\nbp d2~d8. g,16 a8. \pcAO g16 | %20
\nbp c2. \lbp g8. g16 | %21
\nbp c2~c8. e16 d8. c16 | %22
\nbp c2 a4 \lbp a8. c16 | %23
\nbp b2~b8. g16 a8. b16 \pcAp \nbp c2. \he
}
FZxBZZMusicRHB = \relative c'{ \FZxBZZMusicGlobal \clef "treble"
c8. c16 | e4 e g f | e c2 c8. c16 | %3
d4 d c b | c2. c8. c16 | e4 e g f | %6
e c2 c8. c16 | b4. b8 c4. c8 | %8
b2. b8. b16 | b4 b c4. b8 | %10
c4 c2 c8. c16 | b4 b c4. b8 | %12
c2. c8. d16 | e4 c e e | f f2 f8. f16 | %15
e4. e8 f4 f | e2. e8. e16 | %17
e8. e16 e8. e16 e8. e16 g8. f16 | %18
e8. e16 e8. e16 c4 e8. g16 | %19
f8. f16 f8. f16 f8. f16 f8. g16 | %20
e8. e16 e8. e16 e4 e8. e16 | %21
e8. e16 e8. e16 e8. g16 g8. g16 | %22
f8. f16 f8. f16 f4 f8. f16 | %23
d8. d16 d8. d16 d8. e16 f8. f16 e8. e16 f8. f16 e4
}
FZxBZZMusicRH = \partCombine #'(2.20) \FZxBZZMusicRHA\FZxBZZMusicRHB
FZxBZZMusicLHA = \relative c{ \FZxBZZMusicGlobal \clef "bass"
e8. g16 | c4 g g c | c g2 g8. g16 | %3
b4 b g g | g2. e8. g16 | c4 g c c | %6
c g2 g8. g16 | g4. g8 a4. a8 | %8
g2. g8. g16 | g4 g g4. g8 | %10
a4 g2 e8. e16 | g4 g g4. g8 | %12
g2. g8. g16 | c4 g g c | c a2 c8. c16 | %15
c4. \pcAO g8 g4 g | g2. c8. c16 | %17
g8. g16 g8. g16 g8. g16 g8. c16 | %18
c8. c16 c8. c16 g4 c8. c16 | %19
b8. b16 b8. b16 b8. b16 b8. b16 | %20
c8. g16 g8. g16 g4 c8. c16 | %21
g8. g16 g8. g16 g8. c16 b8. c16 | %22
a8. a16 a8. a16 c4 c8. a16 \pcAO | %23
g8. d'16 d8. d16 g,8. g16 g8. g16 g8. g16 a8. a16 g4
}
FZxBZZMusicLHB = \relative c{ \FZxBZZMusicGlobal \clef "bass"
c8. c16 | c4 c c c | c c2 c8. c16 | %3
g4 g g g | c2. c8. c16 | c4 c e f | %6
c c2 c8. c16 | d4. d8 d4. d8 | %8
g,2. g8. g16 | g4 g g4. g8 | %10
c4 c2 c8. c16 | g4 g g4. g8 | %12
c2. c8. c16 | c4 c c c | f f2 f8. f16 | %15
g4. g8 g,4 g | c2. c8. c16 | %17
c8. c16 c8. c16 c8. c16 c8. c16 | %18
c8. c16 c8. c16 c4 c8. e16 | %19
g8. g16 g8. g16 g8. g16 g8. g16 | %20
c,8. c16 c8. c16 c4 c8. c16 | %21
c8. c16 c8. c16 c8. c16 d8. e16 | %22
f8. f16 f8. f16 f4 f8. f16 | %23
g8. g16 g8. g16 g,8. g16 g8. g16 c8. c16 c8. c16 c4
}
FZxBZZMusicLH = \partCombine #'(2.20) \FZxBZZMusicLHA\FZxBZZMusicLHB

FZxBZZMusicLyrics = \relative c''''{ \FZxBZZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4 c4 c4 c4 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4. c8 c4. c8 c2. c8. c16 c4 c4 c4. c8 c4 c2 c8. c16 c4 c4 c4. c8 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4. c8 c4 c4 c2. c8. c16 c2 ct8. c16 c8. c16 c2 c4 c8. c16 c2 ct8. c16 c8. c16 c2. c8. c16 c2 ct8. c16 c8. c16 c2 c4 c8. c16 c2 ct8. c16 c8. c16 c2.
}


FAxAZMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    
}

FAxAZMusicRHA = \relative c'{ \FAxAZMusicGlobal \clef "treble"

}
FAxAZMusicRHB = \relative c'{ \FAxAZMusicGlobal \clef "treble"

}
FAxAZMusicRH = \partCombine #'(2.20) \FAxAZMusicRHA\FAxAZMusicRHB
FAxAZMusicLHA = \relative c{ \FAxAZMusicGlobal \clef "bass"

}
FAxAZMusicLHB = \relative c{ \FAxAZMusicGlobal \clef "bass"

}
FAxAZMusicLH = \partCombine #'(2.20) \FAxAZMusicLHA\FAxAZMusicLHB

FAxAZMusicLyrics = \relative c''''{ \FAxAZMusicGlobal \clef "treble" 
\hideNotes \voiceFour c
}


FBxGBMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 3/4
\key g \major
\partial 4.

}

FBxGBMusicRHA = \relative c'{ \FBxGBMusicGlobal \clef "treble"
d8 d g | b4. c8 b8. a16 | %2
\nbp a4. \lbp d,8 d fis | %3
a4. b8 a8. g16 |  \nbp g4. \lbp d8 d g | %5
b4. d8 d8. c16 | %6
\nbp c4. \lbp c8 b8. b16 | b4. g8 a4 | %8
\nbp \fpre g4. \fpost  \cbp g8 \postCho g b | %9
d4. b8 b8. a16 |  \nbp a4. \lbp a8 a b | %11
c4. d8 c8. b16 |  \nbp b4. \lbp d,8 d g | %13
b4. d8 d8. c16 | %14
\nbp c4. \lbp c8 b8. b16 | b4. g8 a4 \nbp g4. \he
}
FBxGBMusicRHB = \relative c'{ \FBxGBMusicGlobal \clef "treble"
b8 b b | d4. e8 d8. c16 | c4. c8 c c | %3
c4. d8 c8. b16 | b4. b8 b b | %5
d4. f8 e8. e16 | e4. e8 d8. d16 | %7
d4. b8 c4 | b4. b8 b d | %9
g4. g8 g8. fis16 | fis4. fis8 fis g | %11
a4. b8 a8. g16 | g4. b,8 b b | %13
d4. f8 e8. e16 | e4. e8 d8. d16 | %15
d4. b8 c4 b4.
}
FBxGBMusicRH = \partCombine #'(2.20) \FBxGBMusicRHA\FBxGBMusicRHB
FBxGBMusicLHA = \relative c{ \FBxGBMusicGlobal \clef "bass"
g'8 g g | g4. g8 g8. fis16 | %2
fis4. fis8 fis a | fis4. fis8 fis8. g16 | %4
g4. g8 g g | g4. g8 g8. g16 | %6
g4. g8 g8. g16 | g4. g8 fis4 | %8
g4. g8 g g | b4. d8 d8. d16 | d4. d8 d d | %11
d4. d8 d8. d16 | d4. g,8 g g | %13
g4. g8 g8. g16 | g4. g8 g8. g16 | %15
g4. g8 fis4 g4.
}
FBxGBMusicLHB = \relative c{ \FBxGBMusicGlobal \clef "bass"
g8 g g | g4. g8 d'8. d16 | d4. d8 d d | %3
d4. d8 d8. g,16 | g4. g8 g g | %5
g4. b8 c8. c16 | c4. c8 d8. d16 | %7
d4. d8 d4 | \fpre g,4. \fpostbelow g8 g g | %9
g'4. g8 d8. d16 | d4. d8 d d | %11
d4. d8 fis8. g16 | g4. g,8 g g | %13
g4. b8 c8. c16 | c4. c8 d8. d16 | %15
d4. d8 d4 g,4.
}
FBxGBMusicLH = \partCombine #'(2.20) \FBxGBMusicLHA\FBxGBMusicLHB

FBxGBMusicLyrics = \relative c''''{ \FBxGBMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c4 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c4 c4.
}


FCxBBCMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major

}

FCxBBCMusicRHA = \relative c'{ \FCxBBCMusicGlobal \clef "treble"
g'2 f4 f | ees2 f | g4 bes aes g | %3
\nbp f1 | f2 f4 aes | g2 ees | %6
d4 c d ees |  \nbp f1 | g2 aes4 bes | %9
c2 \pcAO c, | aes'4 g f ees | %11
\nbp f1 \pcAO | bes,2 c4 aes' | g2 ees | %14
d4 \pcAO c d f \nbp ees1 \he
}
FCxBBCMusicRHB = \relative c'{ \FCxBBCMusicGlobal \clef "treble"
ees2 d4 d | c2 d | ees4 ees d ees | d1 | %4
d2 d4 d | ees2 bes | b4 b b c | d1 | %8
ees2 d4 ees | c2 c | c4 c c c | d1 | %12
bes2 aes4 c | ees2 bes | bes4 c bes bes bes1
}
FCxBBCMusicRH = \partCombine #'(2.20) \FCxBBCMusicRHA\FCxBBCMusicRHB
FCxBBCMusicLHA = \relative c{ \FCxBBCMusicGlobal \clef "bass"
bes'2 bes4 aes | g2 bes | %2
bes4 bes bes bes | bes1 | bes2 bes4 bes | %5
bes2 g \pcAp | f4 f f f \pcAu | bes1 | %8
bes2 bes4 g | aes2 aes | aes4 aes aes a | %11
bes1 | ees,2 ees4 f | bes2 g | %14
aes4 aes aes aes g1
}
FCxBBCMusicLHB = \relative c{ \FCxBBCMusicGlobal \clef "bass"
ees2 bes4 bes | c2 bes | ees4 g f ees | %3
bes1 | bes2 bes4 bes | ees2 ees | %6
f4 f f f | bes,1 | ees2 f4 ees | %9
aes,2 aes | aes4 aes f' f | bes,1 | %12
g2 aes4 aes | bes2 bes | %14
bes4 bes bes bes ees1
}
FCxBBCMusicLH = \partCombine #'(2.20) \FCxBBCMusicLHA\FCxBBCMusicLHB

FCxBBCMusicLyrics = \relative c''''{ \FCxBBCMusicGlobal \clef "treble" 
\hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1
}


FDxCBMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 6/8
\key es \major

}

FDxCBMusicRHA = \relative c'{ \FDxCBMusicGlobal \clef "treble"
g'8 g g g4 ees8 | bes'4 bes8 bes4. | %2
c8 c c bes4 g8 | f4 g8 f4. | %4
g8 g g g4 ees8 | bes'4 bes8 bes4. | %6
aes8 bes c bes4 g8 | %7
f4 ees8 ees4. \cbp \pcAO | %8
ees8 \postCho f g aes4 aes8 | %9
aes4 aes8 g4. | g8 aes bes c4 c8 | %11
c4 ees8 d4. | bes8 c d ees4 g,8 | %13
f4 \pcAO ees8 c'4. | aes8 bes c bes4 g8 f4 ees8 ees4. \he
}
FDxCBMusicRHB = \relative c'{ \FDxCBMusicGlobal \clef "treble"
ees8 ees ees ees4 bes8 | g'4 g8 g4. | %2
aes8 aes aes g4 ees8 | d4 ees8 d4. | %4
ees8 ees ees ees4 bes8 | g'4 g8 g4. | %6
ees8 ees ees ees4 ees8 | d4 bes8 bes4. | %8
ees8 d des c4 c8 | ees4 ees8 ees4. | %10
ees8 ees ees ees4 ees8 | f4 f8 f4. | %12
aes8 aes aes g4 ees8 | ees4 ees8 ees4. | %14
ees8 ees ees ees4 ees8 d4 bes8 bes4.
}
FDxCBMusicRH = \partCombine #'(2.20) \FDxCBMusicRHA\FDxCBMusicRHB
FDxCBMusicLHA = \relative c{ \FDxCBMusicGlobal \clef "bass"
bes'8 bes bes bes4 g8 | ees'4 ees8 ees4. | %2
ees8 ees ees ees4 bes8 | bes4 bes8 bes4. | %4
bes8 bes bes bes4 g8 | ees'4 ees8 ees4. | %6
c8 bes aes g4 bes8 | bes4 g8 g4. \pcAO | %8
ees8 \pcAO ees \pcAO ees ees4 ees8 | %9
c'4 c8 bes4. | %10
bes8 bes bes \pcAO aes4 \pcAO aes8 | %11
a4 a8 bes4. \pcAO | %12
bes8 \pcAO bes \pcAO bes bes4 bes8 | %13
aes4 g8 aes4. | c8 bes aes g4 bes8 aes4 g8 g4.
}
FDxCBMusicLHB = \relative c{ \FDxCBMusicGlobal \clef "bass"
ees8 ees ees ees4 ees8 | ees4 ees8 ees4. | %2
aes8 aes aes ees4 ees8 | bes4 bes8 bes4. | %4
ees8 ees ees ees4 ees8 | ees4 ees8 ees4. | %6
ees8 ees ees ees4 ees8 | bes4 ees8 ees4. | %8
ees8 ees ees aes,4 aes8 | %9
aes4 aes8 ees'4. | ees8 f g aes4 aes8 | %11
f4 f8 bes,4. | bes'8 bes bes ees,4 ees8 | %13
ees4 ees8 aes,4. | aes8 aes aes bes4 bes8 bes4 ees8 ees4.
}
FDxCBMusicLH = \partCombine #'(2.20) \FDxCBMusicLHA\FDxCBMusicLHB

FDxCBMusicLyrics = \relative c''''{ \FDxCBMusicGlobal \clef "treble" 
\hideNotes \voiceFour c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4.
}


FExAMusicGlobal = {
    \set Staff.autoBeaming = ##f
    \numericTimeSignature
    \set Score.tempoHideNote = ##t
    \time 4/4
\key es \major

}

FExAMusicRHA = \relative c'{ \FExAMusicGlobal \clef "treble"
g'4 g8. f16 \pcAO ees4 g8. aes16 | %1
bes2 g4. r8 | bes4 f8. g16 aes4 g8. f16 | %3
\nbp g2. r4 | g g8. g16 aes4 bes8. c16 | %5
bes2 g4 r | %6
bes f8. g16 aes4 g8. f16 \pcAO | %7
\nbp ees2. r4 \postFine | %8
c' c8. c16 ees4 d8. c16 | c2 bes4 r | %10
bes c8. bes16 aes4 bes8. aes16 | %11
\nbp g2. r4 | c c8. c16 ees4 d8. c16 | %13
c2 bes4. r8 | %14
bes4 f8. d'16 d8 [c] bes8. a16 \nbp bes2 (aes) \postDC \he
}
FExAMusicRHB = \relative c'{ \FExAMusicGlobal \clef "treble"
ees4 ees8. ees16 ees4 ees8. f16 | %1
g2 ees4. r8 | d4 d8. ees16 f4 ees8. d16 | %3
ees2. r4 | %4
ees ees8. ees16 ees4 ees8. ees16 | %5
ees2 ees4 r | d d8. ees16 f4 ees8. d16 | %7
ees2. r4 | %8
ees ees8. ees16 ees4 ees8. ees16 | %9
ees2 ees4 r | d aes'8. g16 f4 g8. f16 | %11
ees2. r4 | %12
ees ees8. ees16 ees4 ees8. ees16 | %13
ees2 ees4. r8 | d4 d8. f16 f4 f8. ees16 d2 (f)
}
FExAMusicRH = \partCombine #'(2.20) \FExAMusicRHA\FExAMusicRHB
FExAMusicLHA = \relative c{ \FExAMusicGlobal \clef "bass"
bes'4 bes8. aes16 g4 bes8. bes16 | %1
ees2 bes4. r8 | %2
bes4 bes8. bes16 bes4 bes8. bes16 | %3
bes2. r4 | bes bes8. bes16 aes4 g8. aes16 | %5
g2 bes4 r | %6
bes bes8. bes16 bes4 bes8. aes16 | %7
g2. r4 \pcAO | %8
aes \pcAO aes8. \pcAO aes16 c4 bes8. \pcAO aes16 | %9
aes2 g4 r | %10
f bes8. bes16 bes4 bes8. bes16 | %11
bes2. r4 \pcAO | %12
aes \pcAO aes8. \pcAO aes16 c4 bes8. \pcAO aes16 | %13
aes2 g4. r8 \pcAO | %14
f4 bes8. bes16 bes8 [ees] d8. c16 bes1
}
FExAMusicLHB = \relative c{ \FExAMusicGlobal \clef "bass"
ees4 ees8. ees16 ees4 ees8. ees16 | %1
ees2 ees4. r8 | %2
bes4 bes8. bes16 bes4 bes8. bes16 | %3
ees2. r4 | ees des8. des16 c4 bes8. aes16 | %5
ees'2 ees4 r | %6
bes bes8. bes16 bes4 bes8. bes16 | %7
ees2. r4 | %8
aes aes8. aes16 aes4 aes8. aes16 | %9
ees2 ees4 r | %10
bes bes8. bes16 bes4 bes8. bes16 | %11
ees2. r4 | %12
aes aes8. aes16 aes4 aes8. aes16 | %13
ees2 ees4. r8 | f4 f8. f16 f4 f8. f16 bes,1
}
FExAMusicLH = \partCombine #'(2.20) \FExAMusicLHA\FExAMusicLHB

FExAMusicLyrics = \relative c''''{ \FExAMusicGlobal \clef "treble" 
\hideNotes \voiceFour c4 c8. c16 c4 c8. c16 c2 c4. cr8 c4 c8. c16 c4 c8. c16 c2. cr4 c4 c8. c16 c4 c8. c16 c2 c4 cr4 c4 c8. c16 c4 c8. c16 c2. cr4 c4 c8. c16 c4 c8. c16 c2 c4 cr4 c4 c8. c16 c4 c8. c16 c2. cr4 c4 c8. c16 c4 c8. c16 c2 c4. cr8 c4 c8. c16 c8 ct8 c8. c16 c2 ct2 c\ChorusBelow0 c4 c8. c16 c4 c8. c16 c2 c4. cr8 c4 c8. c16 c4 c8. c16 c2. cr4 c4 c8. c16 c4 c8. c16 c2 c4 cr4 c4 c8. c16 c4 c8. c16 c2. cr4 c4 c8. c16 c4 c8. c16 c2 c4
}

