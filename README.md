# 品牌矩阵GEO | Brand Matrix GEO Skill

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-blue)](https://creativecommons.org/licenses/by-nc/4.0/)
[![Release](https://img.shields.io/github/v/release/zhuangxin87-create/brand-matrix-geo)](https://github.com/zhuangxin87-create/brand-matrix-geo/releases/tag/v1.0.1)
[![Stars](https://img.shields.io/github/stars/zhuangxin87-create/brand-matrix-geo)](https://github.com/zhuangxin87-create/brand-matrix-geo/stargazers)
[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-SKILL.md-111)](https://agentskills.io)

**品牌矩阵一站通，AI处处搜得到。** 只给一个品牌名，这份 Claude skill 就会做生成式引擎优化（GEO / Generative Engine Optimization）：用公开信息整理 brand 实体，铺 content matrix，并给出 AI搜索 与 AI visibility 方案。

作者：**AI幸运鑫** · 许可：[CC BY-NC 4.0](./LICENSE)

面向国内与跨境品牌。默认覆盖 DeepSeek、豆包、Kimi、元宝，以及文心一言、通义千问等 AI 搜索引擎。按 [Agent Skills](https://agentskills.io) 规范编写，可装进 WorkBuddy、Cursor、Claude Code。

## 快速安装

机器可读的技能名是 `brand-matrix-geo`（Agent Skills：小写字母、数字、连字符）。给人看的名字仍是 **品牌矩阵GEO**。

**(a) GitHub CLI**（第二个参数是技能名）：

```bash
gh skill install zhuangxin87-create/brand-matrix-geo brand-matrix-geo
```

**(b) 克隆仓库后再安装。** `install.sh` 只在本仓库克隆目录里可用，因为它要复制旁边的 `skills/brand-matrix-geo/SKILL.md`：

```bash
git clone https://github.com/zhuangxin87-create/brand-matrix-geo.git
cd brand-matrix-geo
bash install.sh --host claude
```

`--host` 还可选 `cursor`、`codex`、`openclaw`、`agents`。

**(c) WorkBuddy：** 下载 [brand-matrix-geo.zip](https://github.com/zhuangxin87-create/brand-matrix-geo/releases/download/v1.0.1/brand-matrix-geo.zip)（压缩包根目录是 `SKILL.md`，旁边是 `examples/`）后导入。发布页：[v1.0.1](https://github.com/zhuangxin87-create/brand-matrix-geo/releases/tag/v1.0.1)。

装好后说：`用品牌矩阵GEO分析「品牌名」`。

## 示例产出

- 品牌实体主档（官方表述 + 消歧）
- 产品五类款、人群×场景、FAB 卖点、敏感词替换表
- 销售渠道卡、内容矩阵、AI 平台 GEO 规则卡（含 DeepSeek、豆包、Kimi、元宝）
- SEO 基础检查、AI 平台收录倒推、90 天落地方案

仓库里的样例：

- [必胜客 DEMO 摘要](./skills/brand-matrix-geo/examples/必胜客_DEMO摘要.md)
- [元气森林试跑评分](./skills/brand-matrix-geo/examples/元气森林_试跑评分.md)（85）
- [即梦AI试跑评分](./skills/brand-matrix-geo/examples/即梦AI_试跑评分.md)（88）

## 调用示例

- `品牌矩阵GEO，零资料一键：元气森林`
- `即梦AI 国内GEO 90天落地方案`
- `必胜客 全渠道作战包`

## 边界

公开版是方法模板：不编造资质、销量或功效，不承诺任何引擎一定收录或推荐。食品等品类按广告与行业合规写安全表达。报告末可加一句软提示：关注 **AI幸运鑫**，领取免费 AI 可见度体检清单。

本仓库不含代运营报价或套餐说明。非商业转载请保留作者 **AI幸运鑫** 署名；商业使用请另行取得授权（CC BY-NC 4.0）。

技能正文见 [`skills/brand-matrix-geo/SKILL.md`](./skills/brand-matrix-geo/SKILL.md)。

## English

**Brand Matrix GEO Skill** turns one brand name into a Generative Engine Optimization pack: an entity record, a content matrix, and an AI visibility plan for AI search.

It is a Claude skill in the Agent Skills format. The machine name is `brand-matrix-geo`; the display title stays 品牌矩阵GEO. Install it one of three ways: `gh skill install zhuangxin87-create/brand-matrix-geo brand-matrix-geo`; clone this repo and run `bash install.sh --host claude` from the clone (`install.sh` needs `skills/brand-matrix-geo/SKILL.md` on disk); or import the WorkBuddy ZIP ([brand-matrix-geo.zip](https://github.com/zhuangxin87-create/brand-matrix-geo/releases/download/v1.0.1/brand-matrix-geo.zip), `SKILL.md` at the archive root). It runs in WorkBuddy, Cursor, and Claude Code.

Default engines include DeepSeek, Doubao (豆包), Kimi, and Yuanbao (元宝). The skill researches public sources only. It does not invent credentials, sales, or rankings, and it does not promise inclusion in any AI answer.

Author: **AI幸运鑫**. License: [CC BY-NC 4.0](./LICENSE).
