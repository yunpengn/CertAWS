[![Netlify Status](https://api.netlify.com/api/v1/badges/b6bbac67-0b46-45fe-a539-28f2c0f3a611/deploy-status)](https://app.netlify.com/sites/certaws/deploys)
[![CI pipeline](https://github.com/yunpengn/CertAWS/workflows/CI%20pipeline/badge.svg)](https://github.com/yunpengn/CertAWS/actions)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=yunpengn/CertAWS)](https://dependabot.com)

# AWS Certificate Examination Preparation Guide

This repository presents the preparation guide for [AWS Certificate Examination](https://aws.amazon.com/certification/) written by [Yunpeng](https://yunpengn.github.io/). Currently, it is proundly powered by [GitBook](https://github.com/GitbookIO/gitbook).

- Production Site: [https://yunpengn.github.io/CertAWS/](https://yunpengn.github.io/CertAWS/)
- Staging Site: [https://CertAWS.netlify.app/](https://CertAWS.netlify.app/)

## Development

- Fork and clone this repository to your computer.
```bash
git clone git@github.com:yunpengn/CertAWS.git
```
- Navigate to this directory.
```bash
cd CertAWS
```
- Install all the dependencies stated.
```bash
pip3 install -r requirements.txt
```
- Run the GitBook server to host the website locally.
```bash
mkdocs serve
```
- Now, you can visit the website at `http://127.0.0.1:8000/`.

## Deployment

Currently, this blog is being deployed to two environments concurrently, [production site](https://yunpengn.github.io/CertAWS/) on [GitHub Pages](https://pages.github.com/), as well as [staging site](https://CertAWS.netlify.com/) on [Netlify](https://www.netlify.com). The details for these two environments are described as follows respectively.

### Production deployment

Run `mkdocs gh-deploy` to deploy to GitHub Pages.

### Staging deployment

We are also using [Netlify](https://www.netlify.com) as a CI/CD service to host the staging site. The relevant configuration for Netlify can be found in the file [netlify.toml](netlify.toml). The staging pipeline would run whenever you push the changes to this GitHub repository and there is no manual step involved.

## Licence

Copyright &copy; 2018 - Present by [Niu Yunpeng](https://www.github.com/yunpengn/)

This project ([CertAWS](https://yunpengn.github.io/CertAWS/)) is licensed under a [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License](http://creativecommons.org/licenses/by-nc-nd/4.0/) (_"the licence"_). Based on a work at [this repository](https://github.com/yunpengn/CertAWS).

The licence generally grants you the freedom that
- You are free to share, copy and redistribute the material in any medium or format

under the following terms:
- You must give appropriate credit, provide a link to the license, and indicate if changes were made; and
- You may not use the material for commercial purposes; and
- If you remix, transform, or build upon the material, you may not distribute the modified material; and
- You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

> In summary, the licence mentioned above allows you to view and share this work in its original form via any meidum. However, you are **NOT** allowed to modify it under any scenario.

A copy of the licence has been attached to this repository, and can be found [here](LICENSE.md). You may seek permissions beyond the scope of this license by contacting the author at [neilniuyunpeng@gmail.com](mailto:neilniuyunpeng@gmail.com).<br>

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
	<img src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" alt="Creative Commons License" style="border-width:0">
</a>
