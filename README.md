# 🦜🌎 LLMs as Polyglots: On the Emergence of Multilingual Inference Abilities

> By Rishabh Anand, Ryan Chung Yi Sheng, Huaiyu Deng, Zhi Bin Cai, Tan Rui Quan

Code for CS4248 Group Project (AY22/23 Sem 2) [[`code`](https://github.com/rish-16/cs4248-project), [`pdf`](), [`MLeSNLI on HuggingFace`](https://huggingface.co/datasets/rish16/MLe-SNLI)]

## Abstract

Cross-lingual transfer refers to the ability of language models to learn from a set of well-documented languages and perform tasks in unseen, possibly low-resource languages. The community is yet to study the efficacy of LMs on logical inference in a cross-lingual setting. In this work, we make two contributions: we release Multilingual e-SNLI (MLe-SNLI), a cross-lingual dataset built on top of e-SNLI (Camburu et al., 2018) comprising of samples
translated to Spanish, Dutch, French, and German grounded by their similarity to English. We also propose a new prompting paradigm
to study this emergence of LMs by finetuning Flan-T5-Large (Chung et al., 2022) on MLe-SNLI and empirically demonstrate the emergence of multilingual inference skills by comparing it to a zero-shot Flan-T5-Large solely pretrained on ∼1.8K English tasks. Our experiments demonstrate that a finetuned Flan-T5-Large achieves significantly higher classification and explanation accuracies compared to a zero-shot Flan-T5-Large on an unseen lan-
guage. Specifically, our model achieved a clas-sification accuracy of 75% and an explanation accuracy of 51%, whereas the zero-shot model scored 64% and 40% respectively.

## Folder Structure

```
|-findings/
|-scripts/
|-src/
|---jupyter/
|---python/
|-translated_data/
```

- `findings/` contains CSV files and log files that contain the results documented in our report
- `scripts/` contains code you can run on the SOC Cluster
- `code/` contains code to train and run inference (both in Python and Jupyter Notebook format)
- `translated_data/` contains the translated e-SNLI samples for train, test, and dev set

> You can find our final CS4248 group project report at `CS4248_Group19_Final_Report.pdf`!!

## Running Instructions

### Notebooks
If running the notebooks, we recommend,

1. creating a Google Drive with `translated_data` inside
2. importing the notebook of choice as a Google Colab notebook (mounts to your drive folder)
3. switching to GPU mode (preferably Premium Class + High RAM GPU)

> **Note:** The notebook should run without errors if the filepaths are fixed according to your GDrive setup. If you run into any issues, please feel free to drop an [Issue](https://github.com/rish-16/cs4248-project/issues).

### Scripts
If running the python scripts on the SOC Cluster, we recommend,

1. 

> **Note:**

## Contributing

If you encounter any difficulties, please raise an [Issue](https://github.com/rish-16/cs4248-project/issues). If you have any suggestions or improvements, raise a [PR](https://github.com/rish-16/cs4248-project/pulls)!

## License

[MIT](https://github.com/rish-16/cs4248-project/blob/main/LICENSE)