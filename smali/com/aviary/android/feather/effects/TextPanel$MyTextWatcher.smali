.class abstract Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;
.super Ljava/lang/Object;
.source "TextPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TextPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/TextPanel;

.field public view:Lcom/aviary/android/feather/widget/DrawableHighlightView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/TextPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TextPanel$MyTextWatcher;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
