.class abstract Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;
.super Ljava/lang/Object;
.source "MemePanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/MemePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/MemePanel;

.field public view:Lcom/aviary/android/feather/widget/DrawableHighlightView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/MemePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/MemePanel;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/aviary/android/feather/effects/MemePanel$MyTextWatcher;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
