.class Lcom/aviary/android/feather/effects/TextPanel$2;
.super Ljava/lang/Object;
.source "TextPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/TextPanel;->onActivate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/TextPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/TextPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TextPanel;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TextPanel$2;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TextPanel$2;->this$0:Lcom/aviary/android/feather/effects/TextPanel;

    # invokes: Lcom/aviary/android/feather/effects/TextPanel;->onAddNewText()V
    invoke-static {v0}, Lcom/aviary/android/feather/effects/TextPanel;->access$000(Lcom/aviary/android/feather/effects/TextPanel;)V

    .line 381
    return-void
.end method
