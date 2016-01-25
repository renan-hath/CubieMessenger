.class public Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;
.super Ljava/lang/Object;
.source "ShowcaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/widget/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigOptions"
.end annotation


# instance fields
.field public block:Z

.field public blockAnyTouch:Z

.field public hideOnClickOutside:Z

.field public insert:I

.field public noButton:Z

.field public shotType:I

.field public showcaseId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->blockAnyTouch:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->block:Z

    iput-boolean v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->noButton:Z

    .line 42
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->showcaseId:I

    .line 43
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->shotType:I

    .line 44
    iput v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->insert:I

    .line 45
    iput-boolean v1, p0, Lcom/liquable/nemo/widget/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    return-void
.end method
