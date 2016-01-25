.class final enum Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;
.super Ljava/lang/Enum;
.source "OpusJniLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/opus/OpusJniLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LazyLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

.field public static final enum INSTANCE:Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->INSTANCE:Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    sget-object v1, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->INSTANCE:Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->$VALUES:[Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    .line 7
    const-string/jumbo v0, "nemoopus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->$VALUES:[Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    invoke-virtual {v0}, [Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/opus/OpusJniLoader$LazyLoader;

    return-object v0
.end method
