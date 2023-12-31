#install libraries
pip install torchaudio
pip install wandb
pip install gdown

#download LjSpeech
wget https://data.keithito.com/data/speech/LJSpeech-1.1.tar.bz2
mkdir data
tar -xvf LJSpeech-1.1.tar.bz2
mv LJSpeech-1.1 data/LJSpeech-1.1
rm LJSpeech-1.1.tar.bz2

gdown https://drive.google.com/u/0/uc?id=1-EdH0t0loc6vPiuVtXdhsDtzygWNSNZx
mv train.txt data/

#download Waveglow
gdown https://drive.google.com/u/0/uc?id=1WsibBTsuRg_SF2Z6L6NFRTT-NjEy1oTx
mkdir -p waveglow/pretrained_model/
mv waveglow_256channels_ljs_v2.pt waveglow/pretrained_model/waveglow_256channels.pt
mv waveglow/ data/

gdown https://drive.google.com/u/0/uc?id=1cJKJTmYd905a-9GFoo5gKjzhKjUVj83j
tar -xvf mel.tar.gz
echo $(ls mels | wc -l)
mv mels/ data/
rm mel.tar.gz

#download alignments
wget https://github.com/xcmyz/FastSpeech/raw/master/alignments.zip
unzip alignments.zip
mv alignments/ data/
rm alignments.zip