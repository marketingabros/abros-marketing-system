# Monzù Cellar Packaging & Gift Forecast Planner v0.1

Zero-dependency browser tool for the 2026/27 Monzù Cellar gift-packaging buy.

## What it connects

1. 2025 corporate gifting turnover.
2. DIADIKASIA observed package counts by month and gift-value bracket.
3. Actual Vinifera proposal prices and historic physical compositions.
4. Editable Monzù packaging tiers (€14 / €22 / €33 selling prices).
5. Finishing costs: minimum 1.5 m ribbon, tag, rice paper, seal/sticker, filler and wastage.
6. Supplier SKU economics: unit cost, MOQ, lead time, current stock, bottle capacity and allocation preference.
7. Safety stock and reduced initial coverage for short-lead SKUs.
8. Procurement and marketing/render CSV exports.

## Source treatment

- 2025 corporate-gifting sales base defaults to €225,856.70 from the uploaded corporate-gifting turnover document.
- DIADIKASIA 2025 annual sales default to €37,632.51.
- DIADIKASIA package-count history contains 216 packages across Oct–Jan.
- The last historic bracket is corrected from €300 to €320 per management instruction.
- The attached six-page proposal set provides real proposal prices for €40/60/80/100/120/150/200 brackets and physical contents/package formats.
- The €320 proposal remains TBC because it is not present in the attached six-page set.
- The model does not assume missing packages. It displays the difference between proposal-implied revenue and observed annual sales as a reconciliation factor for realised price adjustments, label changes, shipping, substitutions and other adjustments until more detailed source data is loaded.

## Use

Open `index.html` in a browser. No build or install is required.

Edits persist in browser local storage. Export the full model JSON for a portable snapshot.

## Finalisation inputs still expected

- Exact chosen rows from Packaging TBC / Packaging Options with supplier, unit cost, MOQ, lead time and dimensions.
- Ribbon €/m, tag unit cost, rice-paper unit cost, seal and filler cost.
- Yearly gifting booklet / images, especially any €320 offers and additional package formats.

The calculation and PO logic are already implemented; these values refine the output without changing the model.