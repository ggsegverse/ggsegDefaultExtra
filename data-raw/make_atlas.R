# Create DefaultExtra Atlas (DK extra views + hippocampus ant/post)
#
# The dkextra atlas contains superior and inferior views of the DK atlas.
# The hcpa atlas contains FreeSurfer aseg with anterior/posterior hippocampus.
#
# These are derived from FreeSurfer processing and do not have standalone
# source annotation files. They require the ggseg.extra snapshot pipeline
# or conversion from existing legacy data.
#
# TODO: Regenerate from FreeSurfer using appropriate pipeline
#
# Run with: Rscript data-raw/make_atlas.R

stop("DefaultExtra requires manual regeneration. See comments in this script.")
