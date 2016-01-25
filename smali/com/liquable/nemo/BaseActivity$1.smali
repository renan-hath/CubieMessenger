.class synthetic Lcom/liquable/nemo/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$liquable$nemo$BaseActivity$ActionBarStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->values()[Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/BaseActivity$1;->$SwitchMap$com$liquable$nemo$BaseActivity$ActionBarStyle:[I

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/BaseActivity$1;->$SwitchMap$com$liquable$nemo$BaseActivity$ActionBarStyle:[I

    sget-object v1, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->DEFAULT:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
