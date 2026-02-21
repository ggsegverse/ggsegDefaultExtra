describe("dkextra atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(dkextra(), "ggseg_atlas")
    expect_s3_class(dkextra(), "cortical_atlas")
  })
  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(dkextra()))
  })
  it("renders with ggseg", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- ggplot2::ggplot() +
      ggseg::geom_brain(
        atlas = dkextra(),
        mapping = ggplot2::aes(fill = label),
        position = ggseg::position_brain(hemi ~ view),
        show.legend = FALSE
      ) +
      ggplot2::scale_fill_manual(
        values = dkextra()$palette,
        na.value = "grey"
      ) +
      ggplot2::theme_void()
    vdiffr::expect_doppelganger("dkextra-2d", p)
  })
})

describe("hcpa atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(hcpa(), "ggseg_atlas")
    expect_s3_class(hcpa(), "subcortical_atlas")
  })
  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(hcpa()))
  })
  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = hcpa())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
