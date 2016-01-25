.class public final enum Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;
.super Ljava/lang/Enum;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionBarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

.field public static final enum DEFAULT:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

.field public static final enum NO:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->DEFAULT:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    new-instance v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    sget-object v1, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->DEFAULT:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->$VALUES:[Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->$VALUES:[Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    invoke-virtual {v0}, [Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/BaseFragmentActivity$ActionBarStyle;

    return-object v0
.end method
