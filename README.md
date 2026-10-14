# 品牌矩阵GEO / Brand Matrix GEO

**品牌矩阵一站通，AI处处搜得到**  
作者：**AI幸运鑫** · License：[CC BY-NC 4.0](./LICENSE)

> English summary: A zero-material, one-prompt **Generative Engine Optimization (GEO)** skill. Give only a brand name; the agent researches public sources, builds an entity record, channel × AI-engine playbooks, SEO checklist, and a 90-day visibility plan. No end-user API keys. Non-commercial reuse under CC BY-NC 4.0 with attribution to AI幸运鑫.

## 这是什么
面向国内/跨境品牌的 **AI 搜索可见度（GEO）+ 内容矩阵** 方法模板。用户只说品牌名即可触发「一站式」产出（见 `skills/brand-matrix-geo/SKILL.md`）。

不含任何代运营报价或私有套餐细节。报告末可带一句软引流：关注 **AI幸运鑫**，领取免费 AI 可见度体检清单。

## 陌生人一键安装（无需自备 API Key）

### 推荐：GitHub CLI Skill 安装（多 Agent）
若已安装 [GitHub CLI](https://cli.github.com/) 且支持 `gh skill install`：

```bash
gh skill install zhuangxin87-create/brand-matrix-geo
```

> 推送本仓库到 GitHub 后，把 `zhuangxin87-create` 换成真实 owner。该命令将 Skill 装入本机常见 Agent 的 skills 目录（Copilot / Claude Code / Cursor / Codex / OpenClaw 等，以 `gh skill install` 当时支持列表为准）。

### 备选：克隆 + install.sh

```bash
git clone https://github.com/zhuangxin87-create/brand-matrix-geo.git
cd brand-matrix-geo
bash install.sh --host claude    # 或 cursor / codex / openclaw / agents
```

### 手动（Claude Code / 兼容 Agent Skills 规范）

```bash
mkdir -p ~/.claude/skills
cp -R skills/brand-matrix-geo ~/.claude/skills/
```

安装后在对话中说：`用品牌矩阵GEO分析「品牌名」`，或调用 `/brand-matrix-geo`（视宿主而定）。

| 机制 | 核实状态 |
|---|---|
| `SKILL.md` + `skills/*/SKILL.md` 目录约定 | **已核实**（Agent Skills / Claude Code / gh skill install 文档） |
| `install.sh --host …` | **已核实**为常见社区做法；宿主目录以各工具文档为准 |
| `gh skill install` | **已核实**命令存在；需你发布公开仓库后实测 |

## 调用示例
- `品牌矩阵GEO，零资料一键：元气森林`
- `即梦AI 国内GEO 90天落地方案`
- `必胜客 全渠道作战包`

## 示例
见 [`skills/brand-matrix-geo/examples/`](./skills/brand-matrix-geo/examples/)：必胜客 DEMO 摘要、元气森林/即梦AI 试跑评分。

## 质量门禁
公开版 Skill 含 §16–§17：最低交付块、禁编造、食品/AI工具合规与消歧。试跑总分：元气森林 **85**、即梦AI **88**（百分制）。

## 免责
不承诺任何 AI 引擎「一定收录/推荐」。观察结论非官方规则。商业使用请联系作者授权（CC BY-NC）。
