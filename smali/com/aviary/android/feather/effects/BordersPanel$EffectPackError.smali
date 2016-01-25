.class Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
.super Ljava/lang/Object;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectPackError"
.end annotation


# instance fields
.field mError:I

.field mErrorMessage:Ljava/lang/String;

.field mLabel:Ljava/lang/CharSequence;

.field mPackageName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p2, "packagename"    # Ljava/lang/CharSequence;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "error"    # I
    .param p5, "errorString"    # Ljava/lang/String;

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mPackageName:Ljava/lang/CharSequence;

    .line 1674
    iput-object p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mLabel:Ljava/lang/CharSequence;

    .line 1675
    iput p4, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mError:I

    .line 1676
    iput-object p5, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mErrorMessage:Ljava/lang/String;

    .line 1677
    return-void
.end method
