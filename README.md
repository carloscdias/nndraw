# NN Draw

NN Draw is a LaTeX package which provides utilities to draw neural networks.

Currently it contains the `fullyconnectednn` environment and the `nnlayer` command.

## Example

Drawing a fully connected neural network with two hidden layers.
```tex
\begin{fullyconnectednn}[input = \inputLayerText, output = \outputLayerText]
    \nnlayer[title = Input layer,
             text = \inputText,
             color = green!40]{7}
    \nnlayer[title = Hidden layer \#1,
             text = \hiddenOneText,
             bias = $b_1$,
             color = blue!10,
             biascolor = red!20]{8}
    \nnlayer[title = Hidden layer \#2,
             text = \hiddenTwoText,
             bias = $b_2$,
             color = yellow!60]{8}
    \nnlayer[title = Output layer,
             text = \outputText,
             bias = $b_3$]{1}
\end{fullyconnectednn}
```

Drawn as

![nndraw example](/examples/example.png)
