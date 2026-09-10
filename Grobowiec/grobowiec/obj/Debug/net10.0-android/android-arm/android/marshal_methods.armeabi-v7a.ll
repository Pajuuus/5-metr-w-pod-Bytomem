; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [327 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [981 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 70
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 74
	i32 u0x009b21bb, ; 2: System.Net.NameResolution.dll => 69
	i32 u0x00c8cc5d, ; 3: lib_Xamarin.AndroidX.Loader.dll.so => 251
	i32 u0x00e0bbf7, ; 4: lib_System.Xml.XmlSerializer.dll.so => 166
	i32 u0x00efe298, ; 5: System.Runtime.Intrinsics.dll => 111
	i32 u0x0119bc86, ; 6: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 183
	i32 u0x01cdfed1, ; 7: System.Linq.AsyncEnumerable => 59
	i32 u0x01f2c4e1, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 242
	i32 u0x0211b5dc, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 283
	i32 u0x02139ac3, ; 10: System.IO.FileSystem.DriveInfo => 48
	i32 u0x025a8054, ; 11: System.Net.WebSockets.dll => 83
	i32 u0x02664405, ; 12: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 321
	i32 u0x028aa24d, ; 13: System.Threading.Thread => 149
	i32 u0x03358480, ; 14: lib_Microsoft.Maui.dll.so => 197
	i32 u0x0335cdbc, ; 15: ca/Microsoft.Maui.Controls.resources => 293
	i32 u0x03f75868, ; 16: System.Diagnostics.StackTrace => 30
	i32 u0x0410f24b, ; 17: System.Security.Cryptography.Primitives => 127
	i32 u0x044bb714, ; 18: Microsoft.Maui.Graphics.dll => 199
	i32 u0x04e7b0a1, ; 19: System.Runtime.CompilerServices.VisualC.dll => 105
	i32 u0x056606a6, ; 20: lib_System.Collections.NonGeneric.dll.so => 10
	i32 u0x05dc54b4, ; 21: Microsoft.Extensions.Diagnostics.Abstractions => 185
	i32 u0x060d4943, ; 22: Xamarin.AndroidX.SlidingPaneLayout => 265
	i32 u0x0621fa55, ; 23: lib_System.Net.ServerSentEvents.dll.so => 76
	i32 u0x065dd880, ; 24: lib_System.Linq.Queryable.dll.so => 62
	i32 u0x06989c2e, ; 25: Xamarin.AndroidX.Navigation.Runtime.Android.dll => 256
	i32 u0x06c2cd46, ; 26: zh-HK/Microsoft.Maui.Controls.resources => 323
	i32 u0x06e4e181, ; 27: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 283
	i32 u0x06ee56d3, ; 28: lib_System.Net.Mail.dll.so => 68
	i32 u0x06ffddbc, ; 29: System.Runtime.InteropServices => 110
	i32 u0x0720e5bb, ; 30: Xamarin.AndroidX.Navigation.Common.Android.dll => 253
	i32 u0x072f9521, ; 31: Xamarin.AndroidX.SlidingPaneLayout.dll => 265
	i32 u0x074aea82, ; 32: System.Threading.Channels.dll => 143
	i32 u0x0772c6a7, ; 33: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i32 u0x0881c32f, ; 34: System.Net.WebHeaderCollection => 80
	i32 u0x08f064cf, ; 35: System.Security.Cryptography.Primitives.dll => 127
	i32 u0x097ed3c0, ; 36: System.ComponentModel.Annotations => 13
	i32 u0x098905a2, ; 37: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 218
	i32 u0x09d975c3, ; 38: Xamarin.AndroidX.Collection.dll => 215
	i32 u0x0a0c2bd0, ; 39: lib_Xamarin.AndroidX.Activity.dll.so => 204
	i32 u0x0a81994f, ; 40: System.ServiceProcess => 135
	i32 u0x0ade3a75, ; 41: Xamarin.AndroidX.SwipeRefreshLayout.dll => 267
	i32 u0x0ae43932, ; 42: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 268
	i32 u0x0aee6a3d, ; 43: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 322
	i32 u0x0aeedc53, ; 44: lib_Xamarin.Google.Android.Material.dll.so => 279
	i32 u0x0afca281, ; 45: System.ValueTuple.dll => 155
	i32 u0x0b0de1c3, ; 46: lib_System.Xml.XPath.XDocument.dll.so => 163
	i32 u0x0b63b1e1, ; 47: lib_System.Net.Http.Json.dll.so => 65
	i32 u0x0b721a36, ; 48: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 312
	i32 u0x0ba65f85, ; 49: vi/Microsoft.Maui.Controls.resources.dll => 322
	i32 u0x0ba8e231, ; 50: lib_System.Net.ServicePoint.dll.so => 77
	i32 u0x0be195c3, ; 51: zh-HK/Microsoft.Maui.Controls.resources.dll => 323
	i32 u0x0c38ff48, ; 52: System.ComponentModel => 18
	i32 u0x0c7b2e71, ; 53: Xamarin.AndroidX.Browser.dll => 213
	i32 u0x0cbc4dce, ; 54: System.Threading.AccessControl.dll => 142
	i32 u0x0cfa66a6, ; 55: lib_System.IO.Compression.FileSystem.dll.so => 44
	i32 u0x0d1f8edb, ; 56: System.Diagnostics.Debug => 26
	i32 u0x0d3ad0d0, ; 57: Microsoft.Extensions.Diagnostics.dll => 184
	i32 u0x0d73bff4, ; 58: lib_Microsoft.Extensions.Logging.Debug.dll.so => 191
	i32 u0x0dc10265, ; 59: Microsoft.CSharp.dll => 1
	i32 u0x0dc2edec, ; 60: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 224
	i32 u0x0dc2f416, ; 61: lib_Xamarin.AndroidX.CustomView.dll.so => 226
	i32 u0x0dcb05c4, ; 62: System.Linq.Parallel => 61
	i32 u0x0dd133ce, ; 63: System.Globalization => 42
	i32 u0x0e3c65a0, ; 64: lib_System.Threading.AccessControl.dll.so => 142
	i32 u0x0e762ada, ; 65: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 310
	i32 u0x0eb2f8c5, ; 66: System.Reflection.Emit.Lightweight => 94
	i32 u0x0ec71be0, ; 67: lib_System.Security.SecureString.dll.so => 132
	i32 u0x0ecfdca9, ; 68: lib_Xamarin.Android.Glide.dll.so => 200
	i32 u0x0f99119d, ; 69: Xamarin.AndroidX.ConstraintLayout.dll => 219
	i32 u0x107abf20, ; 70: System.Threading.Timer.dll => 151
	i32 u0x109c6ab8, ; 71: Xamarin.AndroidX.Lifecycle.LiveData.dll => 238
	i32 u0x10b7d2b7, ; 72: Xamarin.AndroidX.Interpolator => 235
	i32 u0x10bf9929, ; 73: cs/Microsoft.Maui.Controls.resources.dll => 294
	i32 u0x10c1d9f6, ; 74: lib_System.Data.DataSetExtensions.dll.so => 23
	i32 u0x113d3381, ; 75: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 317
	i32 u0x1159791e, ; 76: System.IO.Pipes.AccessControl.dll => 55
	i32 u0x115c82ee, ; 77: Microsoft.Extensions.Http.dll => 188
	i32 u0x11d123fd, ; 78: System.Net.Ping.dll => 71
	i32 u0x13031348, ; 79: Xamarin.AndroidX.Activity.dll => 204
	i32 u0x132b30dd, ; 80: System.Numerics => 86
	i32 u0x1331a702, ; 81: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 281
	i32 u0x136bf828, ; 82: lib_System.Runtime.dll.so => 119
	i32 u0x14095832, ; 83: ja/Microsoft.Maui.Controls.resources.dll => 307
	i32 u0x146817a2, ; 84: Xamarin.AndroidX.Lifecycle.Common => 236
	i32 u0x14eaf2a7, ; 85: lib_System.ComponentModel.Annotations.dll.so => 13
	i32 u0x153e1455, ; 86: it/Microsoft.Maui.Controls.resources.dll => 306
	i32 u0x15502fa0, ; 87: cs/Microsoft.Maui.Controls.resources => 294
	i32 u0x15766b7b, ; 88: System.ServiceModel.Web => 134
	i32 u0x15c177ae, ; 89: lib_Microsoft.Extensions.Configuration.dll.so => 179
	i32 u0x15e184df, ; 90: lib_System.Runtime.Loader.dll.so => 112
	i32 u0x15ebe147, ; 91: System.IO.Pipes => 56
	i32 u0x1658bf94, ; 92: System.Transactions.Local => 153
	i32 u0x16646418, ; 93: System.Net.ServicePoint.dll => 77
	i32 u0x16a510e1, ; 94: System.Threading.Thread.dll => 149
	i32 u0x16d476c4, ; 95: System.IO.Hashing.dll => 176
	i32 u0x16fe439a, ; 96: System.Memory.dll => 64
	i32 u0x1766c1f7, ; 97: System.Threading.ThreadPool.dll => 150
	i32 u0x1778984a, ; 98: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 260
	i32 u0x17969339, ; 99: _Microsoft.Android.Resource.Designer => 326
	i32 u0x180c08d0, ; 100: WindowsBase => 169
	i32 u0x195d1904, ; 101: Xamarin.AndroidX.Lifecycle.Runtime.Android => 243
	i32 u0x198cd3eb, ; 102: lib_System.Security.Cryptography.Encoding.dll.so => 125
	i32 u0x19f6996b, ; 103: sv/Microsoft.Maui.Controls.resources.dll => 318
	i32 u0x1a4e3ec4, ; 104: Xamarin.AndroidX.ConstraintLayout.Core => 220
	i32 u0x1a61054f, ; 105: System.Collections => 12
	i32 u0x1ae0ec2c, ; 106: Xamarin.AndroidX.Fragment.dll => 233
	i32 u0x1ae969b2, ; 107: System.Security.Cryptography.X509Certificates => 128
	i32 u0x1b317bfd, ; 108: System.Web.HttpUtility.dll => 156
	i32 u0x1b46a9fd, ; 109: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 244
	i32 u0x1b5932ea, ; 110: lib_Mono.Android.Runtime.dll.so => 174
	i32 u0x1b611806, ; 111: System.Runtime.Serialization.Primitives.dll => 116
	i32 u0x1bc4415d, ; 112: mscorlib => 170
	i32 u0x1bc6ffe7, ; 113: lib_Java.Interop.dll.so => 172
	i32 u0x1bff388e, ; 114: System.dll => 168
	i32 u0x1c690cb9, ; 115: Xamarin.AndroidX.Interpolator.dll => 235
	i32 u0x1c78d08a, ; 116: lib_System.Private.Uri.dll.so => 89
	i32 u0x1d48410e, ; 117: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 265
	i32 u0x1d4d8185, ; 118: lib_System.Runtime.Serialization.dll.so => 118
	i32 u0x1dbae811, ; 119: System.ObjectModel => 87
	i32 u0x1dd2dc50, ; 120: id/Microsoft.Maui.Controls.resources.dll => 305
	i32 u0x1e092f31, ; 121: fi/Microsoft.Maui.Controls.resources.dll => 299
	i32 u0x1e9789de, ; 122: Microsoft.Extensions.Primitives.dll => 194
	i32 u0x1f1dceb7, ; 123: lib_System.Security.Cryptography.Primitives.dll.so => 127
	i32 u0x1f443e2d, ; 124: lib_System.AppContext.dll.so => 6
	i32 u0x1f6088c2, ; 125: System.Transactions.dll => 154
	i32 u0x1f6bf43d, ; 126: hi/Microsoft.Maui.Controls.resources => 302
	i32 u0x1f9b4faa, ; 127: System.Linq.Queryable => 62
	i32 u0x20216150, ; 128: Microsoft.Extensions.Logging => 189
	i32 u0x20303736, ; 129: System.IO.FileSystem.dll => 51
	i32 u0x2080b118, ; 130: System.Runtime.Extensions => 106
	i32 u0x20924146, ; 131: System.Runtime.Serialization.Xml => 117
	i32 u0x20bbb280, ; 132: System.Globalization.Calendars => 40
	i32 u0x2116ab2f, ; 133: Xamarin.JSpecify.dll => 285
	i32 u0x213954e7, ; 134: Jsr305Binding => 280
	i32 u0x218bdf07, ; 135: Xamarin.AndroidX.Core.ViewTree.dll => 224
	i32 u0x22697083, ; 136: System.Security.Cryptography.Cng => 123
	i32 u0x234b6fb2, ; 137: pt-BR/Microsoft.Maui.Controls.resources.dll => 313
	i32 u0x236793de, ; 138: lib_GoogleGson.dll.so => 178
	i32 u0x2386616a, ; 139: lib_System.ServiceModel.Web.dll.so => 134
	i32 u0x2397454a, ; 140: lib_System.Collections.Specialized.dll.so => 11
	i32 u0x23d83352, ; 141: System.IO.IsolatedStorage.dll => 52
	i32 u0x23eaab34, ; 142: lib_System.Core.dll.so => 21
	i32 u0x24154ecb, ; 143: System.IO.Compression.FileSystem => 44
	i32 u0x2459aaf0, ; 144: lib_System.Net.Sockets.dll.so => 78
	i32 u0x2493d7b9, ; 145: System.Security.Cryptography.Algorithms => 122
	i32 u0x2512d1c5, ; 146: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 243
	i32 u0x2568904f, ; 147: Xamarin.AndroidX.CustomView => 226
	i32 u0x26233b86, ; 148: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 231
	i32 u0x26249f17, ; 149: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 227
	i32 u0x262968a7, ; 150: lib_System.Reflection.Extensions.dll.so => 96
	i32 u0x262d781c, ; 151: lib-de-Microsoft.Maui.Controls.resources.dll.so => 296
	i32 u0x2660a755, ; 152: System.Net => 84
	i32 u0x27787397, ; 153: System.Text.Encodings.Web.dll => 139
	i32 u0x278c7790, ; 154: Xamarin.AndroidX.VersionedParcelable => 273
	i32 u0x27b53050, ; 155: lib_System.Data.Common.dll.so => 22
	i32 u0x27b6d01f, ; 156: Xamarin.AndroidX.Arch.Core.Common.dll => 211
	i32 u0x2814a96c, ; 157: System.Collections.Concurrent => 8
	i32 u0x282acf5e, ; 158: lib_System.IO.FileSystem.dll.so => 51
	i32 u0x28607aa1, ; 159: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 313
	i32 u0x28bdabca, ; 160: System.Net.Security => 75
	i32 u0x2904cf94, ; 161: ca/Microsoft.Maui.Controls.resources.dll => 293
	i32 u0x29293ff5, ; 162: System.Xml.Linq.dll => 159
	i32 u0x29352520, ; 163: Xamarin.KotlinX.Coroutines.Android.dll => 287
	i32 u0x29423679, ; 164: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 225
	i32 u0x295a9e3d, ; 165: System.Windows => 158
	i32 u0x296c7566, ; 166: lib_System.Xml.dll.so => 167
	i32 u0x29af2b3b, ; 167: System.Reflection.Emit => 95
	i32 u0x29bd7e5b, ; 168: Xamarin.Jetbrains.Annotations => 284
	i32 u0x29be9df3, ; 169: System.IO.Compression.ZipFile => 45
	i32 u0x2a1e8ecb, ; 170: ko/Microsoft.Maui.Controls.resources.dll => 308
	i32 u0x2a4afd4a, ; 171: de/Microsoft.Maui.Controls.resources.dll => 296
	i32 u0x2b15ed29, ; 172: System.Runtime.Loader.dll => 112
	i32 u0x2b9ce19e, ; 173: Microsoft.Extensions.Options.ConfigurationExtensions => 193
	i32 u0x2ba1ca8c, ; 174: lib_System.Security.dll.so => 133
	i32 u0x2bd14e96, ; 175: System.Security.SecureString.dll => 132
	i32 u0x2cd6293c, ; 176: System.Diagnostics.Contracts.dll => 25
	i32 u0x2d052d0c, ; 177: Xamarin.Android.Glide.Annotations.dll => 201
	i32 u0x2d322560, ; 178: lib_System.Xml.XmlDocument.dll.so => 165
	i32 u0x2d445acd, ; 179: System.Net.Requests => 74
	i32 u0x2d745423, ; 180: System.IO.Pipes.dll => 56
	i32 u0x2e394f87, ; 181: System.IO.Compression => 46
	i32 u0x2eec5558, ; 182: lib_System.Reflection.dll.so => 100
	i32 u0x2f0980eb, ; 183: Microsoft.Extensions.Options => 192
	i32 u0x2f0fe5eb, ; 184: lib_System.Reflection.DispatchProxy.dll.so => 92
	i32 u0x2f1c1e69, ; 185: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 227
	i32 u0x2ff6fb9f, ; 186: System.Data.Common => 22
	i32 u0x302809e9, ; 187: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 240
	i32 u0x30a0e95c, ; 188: lib_System.Threading.Thread.dll.so => 149
	i32 u0x311247b5, ; 189: System.Private.Uri.dll => 89
	i32 u0x317d5b75, ; 190: System.IO.Compression.Brotli => 43
	i32 u0x31a103c6, ; 191: System.Xml.XPath.dll => 164
	i32 u0x31b69d60, ; 192: System.Net.Quic => 73
	i32 u0x3312831d, ; 193: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 228
	i32 u0x33e88be1, ; 194: ar/Microsoft.Maui.Controls.resources => 292
	i32 u0x340ac0b8, ; 195: Microsoft.VisualBasic => 3
	i32 u0x34505120, ; 196: System.Globalization.dll => 42
	i32 u0x3463c971, ; 197: System.Net.Http.Json => 65
	i32 u0x34a30d77, ; 198: System.IO.Hashing => 176
	i32 u0x34a66c56, ; 199: lib_System.IO.Pipes.dll.so => 56
	i32 u0x352e5794, ; 200: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 282
	i32 u0x35e25008, ; 201: System.ComponentModel.Primitives.dll => 16
	i32 u0x3612ff2c, ; 202: lib_System.IO.dll.so => 58
	i32 u0x364e69a3, ; 203: System.IO.MemoryMappedFiles.dll => 53
	i32 u0x36e9595b, ; 204: lib_System.Transactions.dll.so => 154
	i32 u0x370eff4f, ; 205: lib_System.Globalization.Extensions.dll.so => 41
	i32 u0x373f6a31, ; 206: tr/Microsoft.Maui.Controls.resources.dll => 320
	i32 u0x3751ef41, ; 207: Xamarin.Google.Guava.ListenableFuture => 283
	i32 u0x3787b992, ; 208: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i32 u0x37ea9cd7, ; 209: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 247
	i32 u0x382704bd, ; 210: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 231
	i32 u0x387472ba, ; 211: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 193
	i32 u0x38c136f7, ; 212: System.Runtime.InteropServices.JavaScript.dll => 108
	i32 u0x38d89c1d, ; 213: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 237
	i32 u0x38fe5498, ; 214: Xamarin.AndroidX.Window.WindowCore.Jvm => 278
	i32 u0x39481653, ; 215: lib_mscorlib.dll.so => 170
	i32 u0x399f1f06, ; 216: Xamarin.Google.Crypto.Tink.Android => 281
	i32 u0x39adca5e, ; 217: Xamarin.AndroidX.Lifecycle.Common.dll => 236
	i32 u0x3a20ecf3, ; 218: System.Diagnostics.Tracing => 34
	i32 u0x3a2aaa1d, ; 219: System.Xml.XDocument => 162
	i32 u0x3a8b0a79, ; 220: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 287
	i32 u0x3acd0267, ; 221: System.Private.DataContractSerialization.dll => 88
	i32 u0x3ad7b407, ; 222: System.Diagnostics.Tools => 32
	i32 u0x3b008d80, ; 223: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 229
	i32 u0x3b2c715c, ; 224: System.Collections.dll => 12
	i32 u0x3b3271e4, ; 225: zh-Hans/Microsoft.Maui.Controls.resources => 324
	i32 u0x3b458447, ; 226: lib_System.Threading.Tasks.Dataflow.dll.so => 145
	i32 u0x3b45fb35, ; 227: System.IO.FileSystem => 51
	i32 u0x3b4797e5, ; 228: es/Microsoft.Maui.Controls.resources => 298
	i32 u0x3bb6bd33, ; 229: System.IO.UnmanagedMemoryStream.dll => 57
	i32 u0x3c5e5b62, ; 230: Xamarin.AndroidX.SavedState.dll => 261
	i32 u0x3cbffa41, ; 231: System.Drawing => 36
	i32 u0x3d548d92, ; 232: Microsoft.Extensions.DependencyInjection.Abstractions => 183
	i32 u0x3d5a6611, ; 233: da/Microsoft.Maui.Controls.resources.dll => 295
	i32 u0x3d7be038, ; 234: Xamarin.Google.ErrorProne.Annotations.dll => 282
	i32 u0x3dbaaf8f, ; 235: Xamarin.AndroidX.AppCompat => 209
	i32 u0x3dc84a49, ; 236: System.Drawing.Primitives.dll => 35
	i32 u0x3df150e9, ; 237: lib_Xamarin.AndroidX.Interpolator.dll.so => 235
	i32 u0x3e444eb4, ; 238: System.Linq.Expressions.dll => 60
	i32 u0x3e5c42fd, ; 239: lib_System.Reflection.TypeExtensions.dll.so => 99
	i32 u0x3e865cbd, ; 240: Microsoft.Extensions.Diagnostics.Abstractions.dll => 185
	i32 u0x3eb776a1, ; 241: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 246
	i32 u0x3ebd41f6, ; 242: lib_System.Collections.dll.so => 12
	i32 u0x3ecd3024, ; 243: lib_System.Resources.Reader.dll.so => 101
	i32 u0x3eea4db8, ; 244: lib_Microsoft.Extensions.Primitives.dll.so => 194
	i32 u0x3f3e1e33, ; 245: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 241
	i32 u0x3f9dcf8c, ; 246: GoogleGson => 178
	i32 u0x408b17f4, ; 247: System.ComponentModel.TypeConverter => 17
	i32 u0x409e66d8, ; 248: Xamarin.Kotlin.StdLib => 286
	i32 u0x41761b2c, ; 249: System => 168
	i32 u0x422dfa8a, ; 250: Microsoft.Extensions.Hosting.Abstractions => 187
	i32 u0x4232ae7b, ; 251: lib_System.Reflection.Emit.dll.so => 95
	i32 u0x42be2972, ; 252: lib_System.Text.Encodings.Web.dll.so => 139
	i32 u0x42c091c1, ; 253: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 203
	i32 u0x42da3e50, ; 254: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 244
	i32 u0x43362f15, ; 255: Microsoft.Extensions.Logging.Debug => 191
	i32 u0x4393e151, ; 256: lib-th-Microsoft.Maui.Controls.resources.dll.so => 319
	i32 u0x441f18e1, ; 257: lib_System.Security.Cryptography.OpenSsl.dll.so => 126
	i32 u0x444e5c8e, ; 258: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i32 u0x44549c93, ; 259: lib_System.Net.WebProxy.dll.so => 81
	i32 u0x4474042c, ; 260: lib_System.Numerics.Vectors.dll.so => 85
	i32 u0x447dc2e6, ; 261: Xamarin.AndroidX.Window => 276
	i32 u0x44845810, ; 262: lib_System.Net.Http.dll.so => 66
	i32 u0x44c3958b, ; 263: lib_System.Private.DataContractSerialization.dll.so => 88
	i32 u0x4528fc75, ; 264: System.Net.ServerSentEvents.dll => 76
	i32 u0x45bde382, ; 265: lib_System.Windows.dll.so => 158
	i32 u0x45c677b2, ; 266: System.Web.dll => 157
	i32 u0x45ec7ce1, ; 267: Microsoft.Extensions.FileProviders.Abstractions.dll => 186
	i32 u0x460b48eb, ; 268: Xamarin.AndroidX.VectorDrawable.Animated => 272
	i32 u0x463a8801, ; 269: Xamarin.AndroidX.Navigation.Runtime.dll => 255
	i32 u0x464305ed, ; 270: fi/Microsoft.Maui.Controls.resources => 299
	i32 u0x466ae52b, ; 271: lib_System.Threading.Overlapped.dll.so => 144
	i32 u0x47a87de7, ; 272: lib_System.Resources.Writer.dll.so => 103
	i32 u0x47b79c15, ; 273: pl/Microsoft.Maui.Controls.resources.dll => 312
	i32 u0x47c7b4fa, ; 274: Xamarin.AndroidX.Arch.Core.Common => 211
	i32 u0x480a69ad, ; 275: System.Diagnostics.Process => 29
	i32 u0x48aa6be3, ; 276: System.IO.IsolatedStorage => 52
	i32 u0x48bf92c4, ; 277: lib_Xamarin.AndroidX.Collection.dll.so => 215
	i32 u0x49654709, ; 278: lib_System.Threading.Timer.dll.so => 151
	i32 u0x499b8219, ; 279: nb/Microsoft.Maui.Controls.resources.dll => 310
	i32 u0x49dd578a, ; 280: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 187
	i32 u0x4a0189ae, ; 281: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 302
	i32 u0x4a4cd262, ; 282: Xamarin.AndroidX.Collection.Jvm.dll => 216
	i32 u0x4a8cb221, ; 283: lib_Xamarin.JSpecify.dll.so => 285
	i32 u0x4aaf6f7c, ; 284: Microsoft.Win32.Registry => 5
	i32 u0x4ae97402, ; 285: lib_Microsoft.Maui.Graphics.dll.so => 199
	i32 u0x4b275854, ; 286: Xamarin.KotlinX.Serialization.Core.Jvm => 291
	i32 u0x4b5eebe5, ; 287: Xamarin.AndroidX.Startup.StartupRuntime.dll => 266
	i32 u0x4b64b158, ; 288: Xamarin.KotlinX.Coroutines.Core.dll => 288
	i32 u0x4b863c7a, ; 289: lib_System.Private.Xml.Linq.dll.so => 90
	i32 u0x4b8a64a7, ; 290: Xamarin.AndroidX.VectorDrawable => 271
	i32 u0x4bb12d98, ; 291: lib_System.Runtime.Serialization.Xml.dll.so => 117
	i32 u0x4be46b58, ; 292: Xamarin.AndroidX.Collection.Ktx => 217
	i32 u0x4c071bea, ; 293: Xamarin.KotlinX.Coroutines.Android => 287
	i32 u0x4c3393c5, ; 294: Xamarin.AndroidX.Annotation.Jvm => 208
	i32 u0x4d14ee2b, ; 295: Xamarin.AndroidX.DrawerLayout.dll => 228
	i32 u0x4de0ce3b, ; 296: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 258
	i32 u0x4e08a30b, ; 297: System.Private.DataContractSerialization => 88
	i32 u0x4e50159c, ; 298: Xamarin.AndroidX.Navigation.Common.Android => 253
	i32 u0x4ea003f9, ; 299: lib_Xamarin.AndroidX.Navigation.Common.Android.dll.so => 253
	i32 u0x4ed70c83, ; 300: Xamarin.AndroidX.Window.dll => 276
	i32 u0x4eed2679, ; 301: System.Linq => 63
	i32 u0x4f97822f, ; 302: System.Runtime.Serialization.Json.dll => 115
	i32 u0x50255dd9, ; 303: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 303
	i32 u0x50acdfd7, ; 304: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 293
	i32 u0x50f5c1df, ; 305: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll.so => 250
	i32 u0x514d38cd, ; 306: System.IO => 58
	i32 u0x51b374e5, ; 307: grobowiec => 0
	i32 u0x52114ed3, ; 308: Xamarin.AndroidX.SavedState => 261
	i32 u0x523dc4c1, ; 309: System.Resources.ResourceManager => 102
	i32 u0x533678bd, ; 310: lib_System.Private.CoreLib.dll.so => 177
	i32 u0x53701274, ; 311: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i32 u0x53936ab4, ; 312: System.Configuration.dll => 19
	i32 u0x53cefc50, ; 313: Xamarin.AndroidX.CoordinatorLayout => 221
	i32 u0x53d71638, ; 314: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll => 250
	i32 u0x53f80ba6, ; 315: System.Runtime.Serialization.Formatters.dll => 114
	i32 u0x5423e47b, ; 316: System.Runtime.CompilerServices.Unsafe => 104
	i32 u0x54246761, ; 317: lib_System.Diagnostics.Tools.dll.so => 32
	i32 u0x5498bac9, ; 318: lib_Microsoft.VisualBasic.dll.so => 3
	i32 u0x54ca50cb, ; 319: System.Runtime.CompilerServices.VisualC => 105
	i32 u0x557217fe, ; 320: lib_System.Numerics.dll.so => 86
	i32 u0x557b5293, ; 321: System.Runtime.Handles => 107
	i32 u0x558bc221, ; 322: Xamarin.Google.Crypto.Tink.Android.dll => 281
	i32 u0x55ab7451, ; 323: Xamarin.AndroidX.Lifecycle.Common.Jvm => 237
	i32 u0x55d10363, ; 324: System.Net.Quic.dll => 73
	i32 u0x55dfaca3, ; 325: lib_Microsoft.Win32.Primitives.dll.so => 4
	i32 u0x55e55df2, ; 326: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 247
	i32 u0x568cd628, ; 327: System.Formats.Asn1.dll => 38
	i32 u0x569fcb36, ; 328: System.Diagnostics.Tools.dll => 32
	i32 u0x56c018af, ; 329: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i32 u0x56e36530, ; 330: System.Runtime.Extensions.dll => 106
	i32 u0x56e7a7ad, ; 331: System.Net.Security.dll => 75
	i32 u0x5718a9ef, ; 332: System.Collections.Immutable.dll => 9
	i32 u0x57201017, ; 333: System.Security.Cryptography.OpenSsl => 126
	i32 u0x57261233, ; 334: System.IO.Compression.dll => 46
	i32 u0x57924923, ; 335: Xamarin.AndroidX.AppCompat.AppCompatResources => 210
	i32 u0x57a5e912, ; 336: Microsoft.Extensions.Primitives => 194
	i32 u0x5833866d, ; 337: System.Collections.Immutable => 9
	i32 u0x583e844f, ; 338: System.IO.Compression.Brotli.dll => 43
	i32 u0x58a57897, ; 339: Microsoft.Win32.Primitives => 4
	i32 u0x58cffa99, ; 340: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 263
	i32 u0x58fd6613, ; 341: hi/Microsoft.Maui.Controls.resources.dll => 302
	i32 u0x596b5b3a, ; 342: lib_System.Drawing.Primitives.dll.so => 35
	i32 u0x59b67d12, ; 343: Microsoft.Extensions.Http => 188
	i32 u0x5a48cf6c, ; 344: el/Microsoft.Maui.Controls.resources.dll => 297
	i32 u0x5b9331b6, ; 345: System.Diagnostics.TextWriterTraceListener => 31
	i32 u0x5be451c7, ; 346: lib_Xamarin.AndroidX.Browser.dll.so => 213
	i32 u0x5bf8ca0f, ; 347: System.Text.RegularExpressions.dll => 141
	i32 u0x5bfdbb43, ; 348: System.Reflection.Emit.dll => 95
	i32 u0x5c680b40, ; 349: System.Reflection.Extensions.dll => 96
	i32 u0x5c7be408, ; 350: sk/Microsoft.Maui.Controls.resources.dll => 317
	i32 u0x5cabc9a4, ; 351: fr/Microsoft.Maui.Controls.resources => 300
	i32 u0x5cb489e2, ; 352: Xamarin.AndroidX.Tracing.Tracing.Android => 269
	i32 u0x5d552ab7, ; 353: System.IO.FileSystem.Primitives => 49
	i32 u0x5d5a6c40, ; 354: System.Threading.Tasks.Dataflow.dll => 145
	i32 u0x5dccd455, ; 355: System.Runtime.Serialization.Json => 115
	i32 u0x5e0b6fdc, ; 356: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 291
	i32 u0x5e2d7514, ; 357: System.Threading.Overlapped => 144
	i32 u0x5e2e3abe, ; 358: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i32 u0x5e33306d, ; 359: sv/Microsoft.Maui.Controls.resources => 318
	i32 u0x5e7321d2, ; 360: lib_System.ComponentModel.Primitives.dll.so => 16
	i32 u0x5ed5f779, ; 361: zh-Hant/Microsoft.Maui.Controls.resources => 325
	i32 u0x5ef2ee25, ; 362: System.Runtime.Serialization.dll => 118
	i32 u0x5f3292e5, ; 363: lib_Microsoft.Extensions.Diagnostics.dll.so => 184
	i32 u0x5f3ec4dd, ; 364: Xamarin.Google.ErrorProne.Annotations => 282
	i32 u0x5f6f0b5b, ; 365: System.Xml.Serialization => 161
	i32 u0x5fa7b851, ; 366: System.Net.WebClient => 79
	i32 u0x6078995d, ; 367: System.Net.WebSockets.Client.dll => 82
	i32 u0x60892624, ; 368: lib_System.Formats.Tar.dll.so => 39
	i32 u0x60b0136a, ; 369: Xamarin.AndroidX.Loader.dll => 251
	i32 u0x60b33958, ; 370: System.Dynamic.Runtime => 37
	i32 u0x60d97228, ; 371: Xamarin.AndroidX.ViewPager2 => 275
	i32 u0x60ec189c, ; 372: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 212
	i32 u0x6176eff7, ; 373: Xamarin.AndroidX.Emoji2.ViewsHelper => 231
	i32 u0x6188ba7e, ; 374: Xamarin.AndroidX.CursorAdapter => 225
	i32 u0x61b9038d, ; 375: System.Net.Http.dll => 66
	i32 u0x61c036ca, ; 376: System.Text.RegularExpressions => 141
	i32 u0x61d59e0e, ; 377: System.ComponentModel.EventBasedAsync.dll => 15
	i32 u0x62021776, ; 378: lib_System.IO.Compression.dll.so => 46
	i32 u0x620a8774, ; 379: lib_System.Xml.ReaderWriter.dll.so => 160
	i32 u0x625755ef, ; 380: lib_WindowsBase.dll.so => 169
	i32 u0x62c6282e, ; 381: System.Runtime => 119
	i32 u0x62cec1a2, ; 382: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 289
	i32 u0x62d6c1e4, ; 383: Xamarin.AndroidX.Tracing.Tracing.dll => 268
	i32 u0x62d6ea10, ; 384: Xamarin.Google.Android.Material.dll => 279
	i32 u0x638b1991, ; 385: Xamarin.AndroidX.ConstraintLayout => 219
	i32 u0x63dee9da, ; 386: System.IO.FileSystem.DriveInfo.dll => 48
	i32 u0x63fca3d0, ; 387: System.Net.Primitives.dll => 72
	i32 u0x640c0103, ; 388: System.Net.WebSockets => 83
	i32 u0x641979dd, ; 389: Xamarin.JSpecify => 285
	i32 u0x641f3e5a, ; 390: System.Security.Cryptography => 129
	i32 u0x64d1e4f5, ; 391: System.Reflection.Metadata => 97
	i32 u0x6525abc9, ; 392: System.Security.Cryptography.Csp => 124
	i32 u0x654b1498, ; 393: lib_System.Transactions.Local.dll.so => 153
	i32 u0x656b7698, ; 394: System.Diagnostics.Debug.dll => 26
	i32 u0x6670b12e, ; 395: lib_System.Security.AccessControl.dll.so => 120
	i32 u0x66888819, ; 396: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 240
	i32 u0x66e27484, ; 397: System.Reflection.dll => 100
	i32 u0x66ffb0f8, ; 398: System.Diagnostics.FileVersionInfo.dll => 28
	i32 u0x6715dc86, ; 399: Xamarin.AndroidX.CardView.dll => 214
	i32 u0x67577fe1, ; 400: lib_System.Runtime.CompilerServices.VisualC.dll.so => 105
	i32 u0x677cd287, ; 401: ro/Microsoft.Maui.Controls.resources.dll => 315
	i32 u0x67fe8db2, ; 402: System.Transactions.Local.dll => 153
	i32 u0x68139a0d, ; 403: System.IO.Pipelines.dll => 54
	i32 u0x6816ab6a, ; 404: Mono.Android.Export => 173
	i32 u0x6853a83d, ; 405: Microsoft.Win32.Primitives.dll => 4
	i32 u0x68cc9d1e, ; 406: System.Resources.Reader.dll => 101
	i32 u0x68f61ae4, ; 407: lib_System.Formats.Asn1.dll.so => 38
	i32 u0x690d4b7d, ; 408: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 325
	i32 u0x69239124, ; 409: System.Diagnostics.TraceSource.dll => 33
	i32 u0x693efa35, ; 410: lib_System.Net.WebHeaderCollection.dll.so => 80
	i32 u0x6942234e, ; 411: System.Reflection.Extensions => 96
	i32 u0x6947f945, ; 412: Xamarin.AndroidX.SwipeRefreshLayout => 267
	i32 u0x6988f147, ; 413: Microsoft.Extensions.Logging.dll => 189
	i32 u0x69ae5451, ; 414: lib_System.Runtime.InteropServices.JavaScript.dll.so => 108
	i32 u0x69d6d061, ; 415: lib_Xamarin.AndroidX.Window.WindowCore.Jvm.dll.so => 278
	i32 u0x69dc03cc, ; 416: System.Core.dll => 21
	i32 u0x69ec0683, ; 417: System.Globalization.Extensions.dll => 41
	i32 u0x69f4f41d, ; 418: lib_Xamarin.AndroidX.AppCompat.dll.so => 209
	i32 u0x6a216153, ; 419: Mono.Android.Runtime.dll => 174
	i32 u0x6a539b49, ; 420: lib_System.Runtime.Extensions.dll.so => 106
	i32 u0x6a96652d, ; 421: Xamarin.AndroidX.Fragment => 233
	i32 u0x6afaf338, ; 422: lib_System.Threading.dll.so => 152
	i32 u0x6b645ada, ; 423: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 300
	i32 u0x6bbb2a76, ; 424: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 186
	i32 u0x6bcd3296, ; 425: Xamarin.AndroidX.Loader => 251
	i32 u0x6be1e423, ; 426: nb/Microsoft.Maui.Controls.resources => 310
	i32 u0x6c111525, ; 427: Xamarin.Kotlin.StdLib.dll => 286
	i32 u0x6c13413e, ; 428: Xamarin.Google.Android.Material => 279
	i32 u0x6c5562e0, ; 429: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 288
	i32 u0x6c652ce8, ; 430: Xamarin.AndroidX.Navigation.UI.dll => 257
	i32 u0x6c687fa7, ; 431: Microsoft.VisualBasic.Core => 2
	i32 u0x6c96614d, ; 432: hu/Microsoft.Maui.Controls.resources => 304
	i32 u0x6cbab720, ; 433: System.Text.Encoding.Extensions => 137
	i32 u0x6cc30c8c, ; 434: System.Runtime.Serialization.Formatters => 114
	i32 u0x6cf3d432, ; 435: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 273
	i32 u0x6cff90ba, ; 436: Microsoft.Extensions.Logging.Abstractions.dll => 190
	i32 u0x6dcaebf7, ; 437: uk/Microsoft.Maui.Controls.resources.dll => 321
	i32 u0x6e1ed932, ; 438: Xamarin.Android.Glide.Annotations => 201
	i32 u0x6ec71a65, ; 439: System.Linq.Expressions => 60
	i32 u0x6f7a29e4, ; 440: System.Reflection.Primitives => 98
	i32 u0x6fab02f2, ; 441: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 219
	i32 u0x7009e4c3, ; 442: System.Formats.Tar.dll => 39
	i32 u0x705fa726, ; 443: Xamarin.AndroidX.Arch.Core.Runtime.dll => 212
	i32 u0x7070c6c0, ; 444: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 324
	i32 u0x70972b6d, ; 445: System.Diagnostics.Contracts => 25
	i32 u0x70a66bdd, ; 446: System.Reflection.Metadata.dll => 97
	i32 u0x7124cf39, ; 447: System.Reflection.DispatchProxy => 92
	i32 u0x71490522, ; 448: System.Resources.ResourceManager.dll => 102
	i32 u0x71dc7c8b, ; 449: System.Collections.NonGeneric.dll => 10
	i32 u0x72fcebde, ; 450: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 210
	i32 u0x731dd955, ; 451: lib_Mono.Android.dll.so => 175
	i32 u0x739bd4a8, ; 452: System.Private.Xml.Linq => 90
	i32 u0x73b20433, ; 453: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i32 u0x73fbecbe, ; 454: lib_System.Memory.dll.so => 64
	i32 u0x74126030, ; 455: lib_System.Net.WebClient.dll.so => 79
	i32 u0x74a1c5bb, ; 456: System.Resources.Writer => 103
	i32 u0x74d743bf, ; 457: ja/Microsoft.Maui.Controls.resources => 307
	i32 u0x74eee4ef, ; 458: Xamarin.AndroidX.Security.SecurityCrypto.dll => 264
	i32 u0x75533a5e, ; 459: Microsoft.Extensions.Configuration.dll => 179
	i32 u0x7593c33f, ; 460: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i32 u0x75ec88d8, ; 461: System.Net.ServerSentEvents => 76
	i32 u0x765c50a4, ; 462: Xamarin.Android.Glide.GifDecoder => 203
	i32 u0x77ec19b4, ; 463: System.Buffers.dll => 7
	i32 u0x781074ce, ; 464: hr/Microsoft.Maui.Controls.resources => 303
	i32 u0x784d3e49, ; 465: lib_System.Net.dll.so => 84
	i32 u0x785e97f1, ; 466: Xamarin.AndroidX.Lifecycle.ViewModel => 246
	i32 u0x78b622b1, ; 467: ar/Microsoft.Maui.Controls.resources.dll => 292
	i32 u0x790376c9, ; 468: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 207
	i32 u0x791a414b, ; 469: Xamarin.Android.Glide => 200
	i32 u0x7970be4f, ; 470: lib-he-Microsoft.Maui.Controls.resources.dll.so => 301
	i32 u0x79d00016, ; 471: it/Microsoft.Maui.Controls.resources => 306
	i32 u0x79eb68ee, ; 472: System.Private.Xml => 91
	i32 u0x7a16417d, ; 473: Microsoft.Extensions.Configuration.Binder.dll => 181
	i32 u0x7a80bd4e, ; 474: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 239
	i32 u0x7aca0819, ; 475: System.Windows.dll => 158
	i32 u0x7b350579, ; 476: lib__Microsoft.Android.Resource.Designer.dll.so => 326
	i32 u0x7b3b4d96, ; 477: System.Linq.AsyncEnumerable.dll => 59
	i32 u0x7b473a37, ; 478: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 234
	i32 u0x7b6f419e, ; 479: System.Diagnostics.TraceSource => 33
	i32 u0x7b8f6ff7, ; 480: lib_System.Runtime.Serialization.Json.dll.so => 115
	i32 u0x7bf8cdab, ; 481: System.Runtime.dll => 119
	i32 u0x7c51ebd4, ; 482: lib_System.Net.HttpListener.dll.so => 67
	i32 u0x7c9bf920, ; 483: System.Numerics.Vectors => 85
	i32 u0x7d702d52, ; 484: lib_System.Text.Encoding.dll.so => 138
	i32 u0x7ec9ffe9, ; 485: System.Console => 20
	i32 u0x7fb38cd2, ; 486: System.Collections.Specialized => 11
	i32 u0x7fc7a41e, ; 487: System.Xml.XmlSerializer.dll => 166
	i32 u0x7fd90a71, ; 488: lib_System.Text.Encoding.CodePages.dll.so => 136
	i32 u0x7fdcdc37, ; 489: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 308
	i32 u0x7ff65cf5, ; 490: Microsoft.VisualBasic.dll => 3
	i32 u0x802a7166, ; 491: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i32 u0x8030853e, ; 492: ko/Microsoft.Maui.Controls.resources => 308
	i32 u0x8044e1bd, ; 493: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 309
	i32 u0x8081c489, ; 494: lib_Jsr305Binding.dll.so => 280
	i32 u0x80bd55ad, ; 495: Microsoft.Maui => 197
	i32 u0x80f2f56e, ; 496: lib_System.Runtime.Serialization.Formatters.dll.so => 114
	i32 u0x810c11c2, ; 497: ro/Microsoft.Maui.Controls.resources => 315
	i32 u0x8115bdf3, ; 498: lib_System.Resources.ResourceManager.dll.so => 102
	i32 u0x816751d8, ; 499: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i32 u0x81a110ae, ; 500: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i32 u0x820d22b3, ; 501: Microsoft.Extensions.Options.dll => 192
	i32 u0x82364da2, ; 502: lib_System.Buffers.dll.so => 7
	i32 u0x82a8237c, ; 503: Microsoft.Extensions.Logging.Abstractions => 190
	i32 u0x82b6c85e, ; 504: System.ObjectModel.dll => 87
	i32 u0x82bb5429, ; 505: lib_System.Linq.Expressions.dll.so => 60
	i32 u0x82c1cf3e, ; 506: lib_System.Net.Quic.dll.so => 73
	i32 u0x82e0ede0, ; 507: lib_Microsoft.Extensions.Http.dll.so => 188
	i32 u0x832ec206, ; 508: lib_System.Diagnostics.StackTrace.dll.so => 30
	i32 u0x83323b38, ; 509: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 289
	i32 u0x8334206b, ; 510: System.Net.Http => 66
	i32 u0x842e93b2, ; 511: Xamarin.AndroidX.VectorDrawable.Animated.dll => 272
	i32 u0x8471e4ec, ; 512: System.Threading.Tasks.Parallel => 147
	i32 u0x857e4dd2, ; 513: lib_System.Net.WebSockets.dll.so => 83
	i32 u0x8628f1a4, ; 514: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 316
	i32 u0x863c6ac5, ; 515: System.Xml.Serialization.dll => 161
	i32 u0x865f9104, ; 516: Xamarin.AndroidX.Window.WindowCore.dll => 277
	i32 u0x867c9c52, ; 517: System.Globalization.Extensions => 41
	i32 u0x86b0fd78, ; 518: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 248
	i32 u0x86bba59b, ; 519: lib_Microsoft.Maui.Controls.dll.so => 195
	i32 u0x8702d9a2, ; 520: System.Security.AccessControl.dll => 120
	i32 u0x871c9c1b, ; 521: Microsoft.Extensions.Configuration.Abstractions => 180
	i32 u0x872eeb7b, ; 522: Xamarin.Android.Glide.DiskLruCache.dll => 202
	i32 u0x875633cc, ; 523: fr/Microsoft.Maui.Controls.resources.dll => 300
	i32 u0x87a1a22b, ; 524: lib-it-Microsoft.Maui.Controls.resources.dll.so => 306
	i32 u0x87e25095, ; 525: Xamarin.AndroidX.RecyclerView.dll => 259
	i32 u0x87e7fdbb, ; 526: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 311
	i32 u0x881f94da, ; 527: lib_netstandard.dll.so => 171
	i32 u0x8873eb17, ; 528: th/Microsoft.Maui.Controls.resources => 319
	i32 u0x887ae6a1, ; 529: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 243
	i32 u0x88937130, ; 530: Xamarin.AndroidX.Window.WindowCore => 277
	i32 u0x88acefcd, ; 531: System.ServiceModel.Web.dll => 134
	i32 u0x88d8bfaa, ; 532: System.Net.Sockets => 78
	i32 u0x88ffe49e, ; 533: System.Net.Mail => 68
	i32 u0x896b7878, ; 534: System.Private.CoreLib.dll => 177
	i32 u0x8a068af2, ; 535: Xamarin.AndroidX.Annotation.dll => 206
	i32 u0x8a52059a, ; 536: System.Threading.Tasks.Parallel.dll => 147
	i32 u0x8ade94bf, ; 537: grobowiec.dll => 0
	i32 u0x8b804dbf, ; 538: System.Runtime.InteropServices.RuntimeInformation.dll => 109
	i32 u0x8bbaa2cd, ; 539: System.ValueTuple => 155
	i32 u0x8c20c628, ; 540: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 299
	i32 u0x8c20f140, ; 541: lib_System.Console.dll.so => 20
	i32 u0x8c40e0db, ; 542: System.Net.Primitives => 72
	i32 u0x8d19e4a2, ; 543: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 238
	i32 u0x8d24e767, ; 544: System.Xml.ReaderWriter.dll => 160
	i32 u0x8d3fac99, ; 545: tr/Microsoft.Maui.Controls.resources => 320
	i32 u0x8d52b2e2, ; 546: Microsoft.Extensions.Configuration => 179
	i32 u0x8d52d3de, ; 547: lib_System.Threading.Tasks.dll.so => 148
	i32 u0x8dc6dbce, ; 548: System.Security.Cryptography.Csp.dll => 124
	i32 u0x8dcb0101, ; 549: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 254
	i32 u0x8e02310f, ; 550: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 292
	i32 u0x8e114655, ; 551: System.Security.Principal.Windows.dll => 130
	i32 u0x8e4e8441, ; 552: Xamarin.AndroidX.Window.WindowCore.Jvm.dll => 278
	i32 u0x8f24faee, ; 553: System.Web.HttpUtility => 156
	i32 u0x8f41c524, ; 554: Xamarin.AndroidX.Emoji2.dll => 230
	i32 u0x8f4e087a, ; 555: lib_System.Web.dll.so => 157
	i32 u0x8f8c64e2, ; 556: lib_System.Private.Xml.dll.so => 91
	i32 u0x903eb247, ; 557: lib_Xamarin.AndroidX.Window.WindowCore.dll.so => 277
	i32 u0x905355ed, ; 558: System.Threading.Tasks.Dataflow => 145
	i32 u0x905caa9d, ; 559: nl/Microsoft.Maui.Controls.resources => 311
	i32 u0x906d466b, ; 560: Xamarin.AndroidX.Collection.Ktx.dll => 217
	i32 u0x90e50509, ; 561: lib_System.Reflection.Primitives.dll.so => 98
	i32 u0x911615a7, ; 562: lib_Xamarin.AndroidX.Fragment.dll.so => 233
	i32 u0x912896e5, ; 563: System.Console.dll => 20
	i32 u0x9130f5e7, ; 564: System.ComponentModel.DataAnnotations.dll => 14
	i32 u0x91abdf3a, ; 565: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 266
	i32 u0x924edee6, ; 566: System.Text.Encoding.dll => 138
	i32 u0x928c75ca, ; 567: System.Net.Sockets.dll => 78
	i32 u0x92916334, ; 568: System.Linq.Parallel.dll => 61
	i32 u0x92f50938, ; 569: Xamarin.AndroidX.ConstraintLayout.Core.dll => 220
	i32 u0x93554fdc, ; 570: netstandard.dll => 171
	i32 u0x93634cc0, ; 571: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 240
	i32 u0x93918882, ; 572: Java.Interop.dll => 172
	i32 u0x93dba8a1, ; 573: Microsoft.Maui.Controls => 195
	i32 u0x940d5c2f, ; 574: System.ComponentModel.EventBasedAsync => 15
	i32 u0x94147f61, ; 575: System.Net.ServicePoint => 77
	i32 u0x9438d78e, ; 576: lib_System.Text.Json.dll.so => 140
	i32 u0x9469ba86, ; 577: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 242
	i32 u0x94798bc5, ; 578: System.AppContext.dll => 6
	i32 u0x94a1db18, ; 579: lib-id-Microsoft.Maui.Controls.resources.dll.so => 305
	i32 u0x94fad8e5, ; 580: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 205
	i32 u0x95178668, ; 581: System.Data.DataSetExtensions => 23
	i32 u0x955cf248, ; 582: Xamarin.AndroidX.Lifecycle.Runtime.dll => 242
	i32 u0x9593ae7f, ; 583: lib_Xamarin.AndroidX.SavedState.dll.so => 261
	i32 u0x963ac2da, ; 584: sk/Microsoft.Maui.Controls.resources => 317
	i32 u0x9659e17c, ; 585: Xamarin.Android.Glide.dll => 200
	i32 u0x96bea474, ; 586: lib_Microsoft.Maui.Controls.Xaml.dll.so => 196
	i32 u0x974b89a2, ; 587: System.Reflection.Emit.Lightweight.dll => 94
	i32 u0x98ba5a04, ; 588: Microsoft.CSharp => 1
	i32 u0x9930ee42, ; 589: System.Text.Encodings.Web => 139
	i32 u0x999dcf0d, ; 590: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 245
	i32 u0x99e2e424, ; 591: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 244
	i32 u0x99e370f2, ; 592: Xamarin.AndroidX.VectorDrawable.dll => 271
	i32 u0x9a1756ac, ; 593: System.Text.Encoding.Extensions.dll => 137
	i32 u0x9a20430d, ; 594: System.Net.Ping => 71
	i32 u0x9a5a3337, ; 595: System.Threading.ThreadPool => 150
	i32 u0x9a83ffe1, ; 596: Microsoft.Extensions.FileProviders.Abstractions => 186
	i32 u0x9b24ab96, ; 597: lib_System.Runtime.Serialization.Primitives.dll.so => 116
	i32 u0x9b500441, ; 598: Xamarin.KotlinX.Coroutines.Core.Jvm => 289
	i32 u0x9b5e5b1c, ; 599: lib_System.Diagnostics.Contracts.dll.so => 25
	i32 u0x9be14c08, ; 600: Xamarin.AndroidX.Fragment.Ktx => 234
	i32 u0x9bf052c1, ; 601: Microsoft.Extensions.Logging.Debug.dll => 191
	i32 u0x9bfe3a41, ; 602: System.Private.Xml.dll => 91
	i32 u0x9c165ff9, ; 603: System.Reflection.TypeExtensions.dll => 99
	i32 u0x9c375496, ; 604: Xamarin.AndroidX.CursorAdapter.dll => 225
	i32 u0x9c70e6c9, ; 605: Xamarin.AndroidX.DynamicAnimation => 229
	i32 u0x9c96ac4c, ; 606: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 257
	i32 u0x9c97ad4a, ; 607: System.Diagnostics.TextWriterTraceListener.dll => 31
	i32 u0x9cc03a58, ; 608: System.IO.Compression.ZipFile.dll => 45
	i32 u0x9cd341b2, ; 609: lib_System.Threading.Tasks.Parallel.dll.so => 147
	i32 u0x9cf12c56, ; 610: Xamarin.AndroidX.Lifecycle.LiveData => 238
	i32 u0x9e78dac1, ; 611: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 249
	i32 u0x9ec022c0, ; 612: Xamarin.Android.Glide.DiskLruCache => 202
	i32 u0x9ec4cf01, ; 613: System.Runtime.Loader => 112
	i32 u0x9ecf752a, ; 614: System.Xml.XDocument.dll => 162
	i32 u0x9ee22cc0, ; 615: System.Drawing.Primitives => 35
	i32 u0x9f3b757e, ; 616: Xamarin.KotlinX.Coroutines.Core => 288
	i32 u0x9f7ea921, ; 617: lib_System.Runtime.InteropServices.dll.so => 110
	i32 u0x9f8c6f40, ; 618: System.Data.Common.dll => 22
	i32 u0xa026a50c, ; 619: System.Runtime.Serialization.Xml.dll => 117
	i32 u0xa090e36a, ; 620: System.IO.dll => 58
	i32 u0xa0fb56af, ; 621: lib_System.Text.RegularExpressions.dll.so => 141
	i32 u0xa0ff7514, ; 622: Xamarin.AndroidX.Tracing.Tracing => 268
	i32 u0xa1d8b647, ; 623: System.Threading.Tasks.dll => 148
	i32 u0xa1fd7d9f, ; 624: System.Security.Claims => 121
	i32 u0xa21f5a1f, ; 625: System.Security.Cryptography.Cng.dll => 123
	i32 u0xa25c90e5, ; 626: lib_Xamarin.AndroidX.Core.dll.so => 222
	i32 u0xa262a30f, ; 627: System.Runtime.Numerics.dll => 113
	i32 u0xa2ce8457, ; 628: lib-es-Microsoft.Maui.Controls.resources.dll.so => 298
	i32 u0xa2e0939b, ; 629: Xamarin.AndroidX.Activity => 204
	i32 u0xa30769e5, ; 630: System.Threading.Channels => 143
	i32 u0xa32eb6f0, ; 631: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 210
	i32 u0xa35f8f92, ; 632: System.IO.Pipes.AccessControl => 55
	i32 u0xa3c818c7, ; 633: lib_System.Net.WebSockets.Client.dll.so => 82
	i32 u0xa3cc7fa7, ; 634: System.Runtime.InteropServices.JavaScript => 108
	i32 u0xa3de87ea, ; 635: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android => 250
	i32 u0xa4672f3b, ; 636: Microsoft.Maui.Controls.Xaml => 196
	i32 u0xa493aa02, ; 637: lib_System.Collections.Concurrent.dll.so => 8
	i32 u0xa4caf7a7, ; 638: Microsoft.Maui.dll => 197
	i32 u0xa4d4aaf8, ; 639: lib_System.Security.Cryptography.Cng.dll.so => 123
	i32 u0xa4db22c6, ; 640: System.Text.Encoding.CodePages.dll => 136
	i32 u0xa4e79dfd, ; 641: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 247
	i32 u0xa522693c, ; 642: Xamarin.Jetbrains.Annotations.dll => 284
	i32 u0xa52ac270, ; 643: lib_Xamarin.AndroidX.Window.dll.so => 276
	i32 u0xa553c739, ; 644: lib_System.ValueTuple.dll.so => 155
	i32 u0xa5a0a402, ; 645: Xamarin.AndroidX.ViewPager.dll => 274
	i32 u0xa5b3182d, ; 646: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 260
	i32 u0xa5b67c07, ; 647: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 237
	i32 u0xa5c5753c, ; 648: lib_System.Collections.Immutable.dll.so => 9
	i32 u0xa5ea80d9, ; 649: lib_Xamarin.Android.Glide.Annotations.dll.so => 201
	i32 u0xa6133c7f, ; 650: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i32 u0xa630ecdd, ; 651: Xamarin.AndroidX.Fragment.Ktx.dll => 234
	i32 u0xa668c988, ; 652: lib_System.Net.NameResolution.dll.so => 69
	i32 u0xa68bc8b3, ; 653: lib_Xamarin.AndroidX.Tracing.Tracing.Android.dll.so => 269
	i32 u0xa7008e0b, ; 654: Microsoft.Maui.Graphics => 199
	i32 u0xa7042ae3, ; 655: uk/Microsoft.Maui.Controls.resources => 321
	i32 u0xa715dd7e, ; 656: System.Xml.XPath.XDocument.dll => 163
	i32 u0xa741ef0b, ; 657: es/Microsoft.Maui.Controls.resources.dll => 298
	i32 u0xa744f665, ; 658: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 255
	i32 u0xa78103bc, ; 659: Xamarin.AndroidX.CoordinatorLayout.dll => 221
	i32 u0xa8032c67, ; 660: lib_Microsoft.Win32.Registry.dll.so => 5
	i32 u0xa80db4e1, ; 661: System.Xml.dll => 167
	i32 u0xa81b119f, ; 662: lib_System.Security.Cryptography.dll.so => 129
	i32 u0xa8282c09, ; 663: System.ServiceProcess.dll => 135
	i32 u0xa8298928, ; 664: Xamarin.AndroidX.ResourceInspection.Annotation => 260
	i32 u0xa85a7b6c, ; 665: System.Xml.XmlDocument => 165
	i32 u0xa8c61dcb, ; 666: nl/Microsoft.Maui.Controls.resources.dll => 311
	i32 u0xa9366b55, ; 667: Xamarin.AndroidX.Tracing.Tracing.Android.dll => 269
	i32 u0xa9379a4f, ; 668: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 248
	i32 u0xa9d96f9b, ; 669: System.Threading.Overlapped.dll => 144
	i32 u0xaa107fc4, ; 670: Xamarin.AndroidX.ViewPager => 274
	i32 u0xaa2b531f, ; 671: lib_System.Globalization.dll.so => 42
	i32 u0xaa36a797, ; 672: Xamarin.AndroidX.Transition => 270
	i32 u0xaa4e51ff, ; 673: el/Microsoft.Maui.Controls.resources => 297
	i32 u0xaa88e550, ; 674: Mono.Android.Export.dll => 173
	i32 u0xaa8a4878, ; 675: Microsoft.Maui.Essentials => 198
	i32 u0xab123e9a, ; 676: Xamarin.AndroidX.Activity.Ktx.dll => 205
	i32 u0xab5f85c3, ; 677: Jsr305Binding.dll => 280
	i32 u0xab606289, ; 678: System.Globalization.Calendars.dll => 40
	i32 u0xabbc23e8, ; 679: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 291
	i32 u0xabdea79a, ; 680: ru/Microsoft.Maui.Controls.resources => 316
	i32 u0xabf58099, ; 681: Xamarin.AndroidX.ExifInterface => 232
	i32 u0xac1dd496, ; 682: System.Net.dll => 84
	i32 u0xacd6baa9, ; 683: System.IO.UnmanagedMemoryStream => 57
	i32 u0xace3f9b4, ; 684: System.Dynamic.Runtime.dll => 37
	i32 u0xace7ba82, ; 685: lib_System.Security.Principal.Windows.dll.so => 130
	i32 u0xacf080de, ; 686: System.Reflection => 100
	i32 u0xacf097ce, ; 687: System.Threading.AccessControl => 142
	i32 u0xad2a79b6, ; 688: mscorlib.dll => 170
	i32 u0xad6f1e8a, ; 689: System.Private.CoreLib => 177
	i32 u0xad90894d, ; 690: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 290
	i32 u0xaddb6d38, ; 691: Xamarin.AndroidX.ViewPager2.dll => 275
	i32 u0xae037813, ; 692: System.Numerics.Vectors.dll => 85
	i32 u0xae1ce33f, ; 693: Xamarin.AndroidX.Annotation.Experimental.dll => 207
	i32 u0xaeb2d8a5, ; 694: lib_Microsoft.Extensions.Options.dll.so => 192
	i32 u0xaf06273c, ; 695: System.Resources.Reader => 101
	i32 u0xaf3a6b91, ; 696: lib_System.Diagnostics.Debug.dll.so => 26
	i32 u0xaf4af872, ; 697: System.Diagnostics.StackTrace.dll => 30
	i32 u0xaf624531, ; 698: System.Xml.XPath.XDocument => 163
	i32 u0xaf8b1081, ; 699: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 263
	i32 u0xb0682092, ; 700: System.ComponentModel.dll => 18
	i32 u0xb0ed41f3, ; 701: System.Security.Principal.Windows => 130
	i32 u0xb115eec7, ; 702: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 193
	i32 u0xb1182a36, ; 703: lib_Xamarin.AndroidX.Navigation.Runtime.Android.dll.so => 256
	i32 u0xb128f886, ; 704: System.Security.Cryptography.Algorithms.dll => 122
	i32 u0xb18af942, ; 705: Xamarin.AndroidX.DrawerLayout => 228
	i32 u0xb1a434a2, ; 706: lib_System.Xml.Linq.dll.so => 159
	i32 u0xb1a7d210, ; 707: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 245
	i32 u0xb21220a3, ; 708: Xamarin.AndroidX.Security.SecurityCrypto => 264
	i32 u0xb223fa8c, ; 709: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 294
	i32 u0xb28cab85, ; 710: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 202
	i32 u0xb294d40b, ; 711: lib_System.Net.Ping.dll.so => 71
	i32 u0xb2a03f9f, ; 712: Xamarin.AndroidX.Lifecycle.Process.dll => 241
	i32 u0xb3d3821c, ; 713: Xamarin.AndroidX.Startup.StartupRuntime => 266
	i32 u0xb40c4519, ; 714: Microsoft.Extensions.Diagnostics => 184
	i32 u0xb434b64b, ; 715: WindowsBase.dll => 169
	i32 u0xb514b305, ; 716: _Microsoft.Android.Resource.Designer.dll => 326
	i32 u0xb58d85d9, ; 717: lib_System.Runtime.Handles.dll.so => 107
	i32 u0xb62a9ccb, ; 718: Xamarin.AndroidX.SavedState.SavedState.Ktx => 263
	i32 u0xb63fa9f0, ; 719: Xamarin.AndroidX.Navigation.Common => 252
	i32 u0xb6490b5e, ; 720: lib_Mono.Android.Export.dll.so => 173
	i32 u0xb65adef9, ; 721: Mono.Android.Runtime => 174
	i32 u0xb660be12, ; 722: System.ComponentModel.Primitives => 16
	i32 u0xb6a153b2, ; 723: lib_Xamarin.AndroidX.ViewPager2.dll.so => 275
	i32 u0xb70c6fb4, ; 724: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 271
	i32 u0xb755818f, ; 725: System.Threading.Tasks => 148
	i32 u0xb76be845, ; 726: hu/Microsoft.Maui.Controls.resources.dll => 304
	i32 u0xb7e7c341, ; 727: lib_System.Globalization.Calendars.dll.so => 40
	i32 u0xb838e2b0, ; 728: System.Security.Cryptography.X509Certificates.dll => 128
	i32 u0xb8c22b7f, ; 729: System.Security.Claims.dll => 121
	i32 u0xb8fd311b, ; 730: System.Formats.Asn1 => 38
	i32 u0xb979e222, ; 731: System.Runtime.Serialization => 118
	i32 u0xba0dbf1c, ; 732: System.IO.FileSystem.AccessControl.dll => 47
	i32 u0xba4127cb, ; 733: System.Threading.Tasks.Extensions => 146
	i32 u0xbaa520e7, ; 734: lib_System.ObjectModel.dll.so => 87
	i32 u0xbab301d1, ; 735: System.Security.AccessControl => 120
	i32 u0xbb95ee37, ; 736: System.Diagnostics.Tracing.dll => 34
	i32 u0xbba64c02, ; 737: GoogleGson.dll => 178
	i32 u0xbc4c6465, ; 738: System.Reflection.Primitives.dll => 98
	i32 u0xbc652da7, ; 739: System.IO.MemoryMappedFiles => 53
	i32 u0xbc98c93d, ; 740: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 216
	i32 u0xbcc610a0, ; 741: lib_System.Reflection.Metadata.dll.so => 97
	i32 u0xbd113355, ; 742: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 252
	i32 u0xbd3726df, ; 743: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 181
	i32 u0xbd78b0c8, ; 744: Xamarin.AndroidX.Navigation.Fragment.dll => 254
	i32 u0xbddce8a2, ; 745: lib_System.Security.Principal.dll.so => 131
	i32 u0xbe3f07c2, ; 746: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 104
	i32 u0xbe4755f4, ; 747: System.Security.SecureString => 132
	i32 u0xbe592c0c, ; 748: System.Web => 157
	i32 u0xbefef58f, ; 749: System.Data.dll => 24
	i32 u0xbf506931, ; 750: System.Xml.XmlDocument.dll => 165
	i32 u0xbff2e236, ; 751: System.Threading => 152
	i32 u0xc04c3c0a, ; 752: System.Runtime.Handles.dll => 107
	i32 u0xc095e070, ; 753: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 236
	i32 u0xc10b79a7, ; 754: Xamarin.AndroidX.Core.ViewTree => 224
	i32 u0xc1c6ebf4, ; 755: System.Reflection.DispatchProxy.dll => 92
	i32 u0xc217efb6, ; 756: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 220
	i32 u0xc2293e61, ; 757: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 262
	i32 u0xc235e84d, ; 758: Xamarin.AndroidX.CardView => 214
	i32 u0xc2a37b91, ; 759: System.Linq.Queryable.dll => 62
	i32 u0xc2a993fa, ; 760: System.Threading.Tasks.Extensions.dll => 146
	i32 u0xc3428433, ; 761: lib_System.Reflection.Emit.ILGeneration.dll.so => 93
	i32 u0xc35f7fa4, ; 762: System.Resources.Writer.dll => 103
	i32 u0xc37f65ce, ; 763: Microsoft.Win32.Registry.dll => 5
	i32 u0xc3888e16, ; 764: System.ComponentModel.Annotations.dll => 13
	i32 u0xc3ba1d80, ; 765: lib_System.Security.Cryptography.Csp.dll.so => 124
	i32 u0xc4251ff9, ; 766: System.Security.Cryptography.Encoding => 125
	i32 u0xc4684d9e, ; 767: lib_System.Security.Cryptography.Algorithms.dll.so => 122
	i32 u0xc4a8494a, ; 768: System.Text.Encoding => 138
	i32 u0xc4e76306, ; 769: System.Diagnostics.FileVersionInfo => 28
	i32 u0xc591efe9, ; 770: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 180
	i32 u0xc5b097e4, ; 771: System.Net.Requests.dll => 74
	i32 u0xc5b776df, ; 772: Xamarin.AndroidX.CustomView.dll => 226
	i32 u0xc5b79d28, ; 773: System.Data => 24
	i32 u0xc69f3b41, ; 774: lib_System.Data.dll.so => 24
	i32 u0xc71af05d, ; 775: Xamarin.AndroidX.Arch.Core.Runtime => 212
	i32 u0xc76e512c, ; 776: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 258
	i32 u0xc774da4f, ; 777: Xamarin.AndroidX.Navigation.Runtime => 255
	i32 u0xc7a3b0f0, ; 778: lib_Xamarin.AndroidX.Transition.dll.so => 270
	i32 u0xc7b797d0, ; 779: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 223
	i32 u0xc821fc10, ; 780: lib_System.ComponentModel.dll.so => 18
	i32 u0xc82afec1, ; 781: System.Text.Json => 140
	i32 u0xc8693088, ; 782: Xamarin.AndroidX.Activity.Ktx => 205
	i32 u0xc86c06e3, ; 783: Xamarin.AndroidX.Core => 222
	i32 u0xc8a662e9, ; 784: Java.Interop => 172
	i32 u0xc8d10307, ; 785: lib_System.Diagnostics.TraceSource.dll.so => 33
	i32 u0xc9094c00, ; 786: Xamarin.AndroidX.Navigation.Runtime.Android => 256
	i32 u0xc92a6809, ; 787: Xamarin.AndroidX.RecyclerView => 259
	i32 u0xca5de1fa, ; 788: System.Runtime.CompilerServices.Unsafe.dll => 104
	i32 u0xcae37e41, ; 789: System.Security.Cryptography.OpenSsl.dll => 126
	i32 u0xcaf7bd4b, ; 790: Xamarin.AndroidX.CustomView.PoolingContainer => 227
	i32 u0xcb5af55c, ; 791: lib_System.Reflection.Emit.Lightweight.dll.so => 94
	i32 u0xcbeae9c6, ; 792: Microsoft.Extensions.Configuration.Binder => 181
	i32 u0xcc5af6ee, ; 793: Microsoft.Extensions.DependencyInjection.dll => 182
	i32 u0xcc6479a0, ; 794: System.Xml => 167
	i32 u0xcc7d82b4, ; 795: netstandard => 171
	i32 u0xcd1dd0db, ; 796: Xamarin.AndroidX.DynamicAnimation.dll => 229
	i32 u0xcd5a809f, ; 797: System.Formats.Tar => 39
	i32 u0xcdd8cd54, ; 798: lib_Xamarin.AndroidX.Emoji2.dll.so => 230
	i32 u0xce3fa116, ; 799: lib_System.Diagnostics.Process.dll.so => 29
	i32 u0xce70fda2, ; 800: hr/Microsoft.Maui.Controls.resources.dll => 303
	i32 u0xcef19b37, ; 801: System.ComponentModel.TypeConverter.dll => 17
	i32 u0xcf3163e6, ; 802: Mono.Android => 175
	i32 u0xcf663a21, ; 803: ru/Microsoft.Maui.Controls.resources.dll => 316
	i32 u0xcfa20c36, ; 804: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 267
	i32 u0xcfbaacae, ; 805: System.Text.Json.dll => 140
	i32 u0xcfd0c798, ; 806: System.Transactions => 154
	i32 u0xd0418592, ; 807: Xamarin.AndroidX.Concurrent.Futures.dll => 218
	i32 u0xd128d608, ; 808: System.Xml.Linq => 159
	i32 u0xd1854eb4, ; 809: System.Security.dll => 133
	i32 u0xd2757232, ; 810: System.Configuration => 19
	i32 u0xd2ff69f1, ; 811: System.Net.HttpListener => 67
	i32 u0xd310c033, ; 812: lib_Xamarin.Jetbrains.Annotations.dll.so => 284
	i32 u0xd328ac54, ; 813: vi/Microsoft.Maui.Controls.resources => 322
	i32 u0xd4045e1b, ; 814: lib_System.dll.so => 168
	i32 u0xd404ddfe, ; 815: lib_System.Runtime.Intrinsics.dll.so => 111
	i32 u0xd432d20b, ; 816: System.Threading.Timer => 151
	i32 u0xd457e5c9, ; 817: lib_Microsoft.CSharp.dll.so => 1
	i32 u0xd47cb45a, ; 818: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 211
	i32 u0xd496c3c3, ; 819: lib_Xamarin.AndroidX.ExifInterface.dll.so => 232
	i32 u0xd4d2575b, ; 820: System.IO.FileSystem.AccessControl => 47
	i32 u0xd505225a, ; 821: lib_System.Xml.XPath.dll.so => 164
	i32 u0xd622b752, ; 822: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 315
	i32 u0xd664cdf2, ; 823: de/Microsoft.Maui.Controls.resources => 296
	i32 u0xd6665034, ; 824: Xamarin.Android.Glide.GifDecoder.dll => 203
	i32 u0xd67a52b3, ; 825: System.Net.WebSockets.Client => 82
	i32 u0xd715a361, ; 826: System.Linq.dll => 63
	i32 u0xd7f95f5a, ; 827: da/Microsoft.Maui.Controls.resources => 295
	i32 u0xd804d57a, ; 828: System.Runtime.InteropServices.RuntimeInformation => 109
	i32 u0xd889aee8, ; 829: lib_System.Threading.Channels.dll.so => 143
	i32 u0xd8950487, ; 830: Xamarin.AndroidX.Annotation.Experimental => 207
	i32 u0xd8bba49d, ; 831: lib_Xamarin.AndroidX.RecyclerView.dll.so => 259
	i32 u0xd8dbab5d, ; 832: System.IO.FileSystem.Primitives.dll => 49
	i32 u0xd90e5f5a, ; 833: Xamarin.AndroidX.Lifecycle.LiveData.Core => 239
	i32 u0xd92e86f1, ; 834: Xamarin.KotlinX.Serialization.Core.dll => 290
	i32 u0xd930cda0, ; 835: Xamarin.AndroidX.Navigation.Fragment => 254
	i32 u0xd943a729, ; 836: System.ComponentModel.DataAnnotations => 14
	i32 u0xd96cf6f7, ; 837: pt-BR/Microsoft.Maui.Controls.resources => 313
	i32 u0xd9f65f5e, ; 838: lib-el-Microsoft.Maui.Controls.resources.dll.so => 297
	i32 u0xd9fdda56, ; 839: Microsoft.Extensions.Configuration.Abstractions.dll => 180
	i32 u0xda2f27df, ; 840: System.Net.NetworkInformation => 70
	i32 u0xda4773dd, ; 841: he/Microsoft.Maui.Controls.resources => 301
	i32 u0xdabf74ac, ; 842: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 208
	i32 u0xdae8aa5e, ; 843: Mono.Android.dll => 175
	i32 u0xdb7f7e5d, ; 844: Xamarin.AndroidX.Browser => 213
	i32 u0xdb9df1ce, ; 845: Xamarin.AndroidX.Concurrent.Futures => 218
	i32 u0xdbb50d93, ; 846: ms/Microsoft.Maui.Controls.resources => 309
	i32 u0xdc5370c5, ; 847: lib_System.Web.HttpUtility.dll.so => 156
	i32 u0xdc68940c, ; 848: zh-Hant/Microsoft.Maui.Controls.resources.dll => 325
	i32 u0xdc96bdf5, ; 849: System.Net.WebProxy.dll => 81
	i32 u0xdcefb51d, ; 850: Xamarin.AndroidX.Core.Core.Ktx.dll => 223
	i32 u0xdd864306, ; 851: System.Runtime.Intrinsics => 111
	i32 u0xdda814c6, ; 852: Xamarin.AndroidX.Annotation => 206
	i32 u0xde068c70, ; 853: Xamarin.AndroidX.Navigation.Common.dll => 252
	i32 u0xde7354ab, ; 854: System.Net.NameResolution => 69
	i32 u0xdecad304, ; 855: System.Net.Http.Json.dll => 65
	i32 u0xdf1b1ecd, ; 856: lib_System.ServiceProcess.dll.so => 135
	i32 u0xdf6f3870, ; 857: System.Diagnostics.DiagnosticSource => 27
	i32 u0xdf9a7f42, ; 858: System.Xml.XPath => 164
	i32 u0xdfd65a5d, ; 859: lib_System.Diagnostics.Tracing.dll.so => 34
	i32 u0xe05b6245, ; 860: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 245
	i32 u0xe12f62fc, ; 861: lib_System.Threading.ThreadPool.dll.so => 150
	i32 u0xe13414bb, ; 862: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 304
	i32 u0xe1a41194, ; 863: lib_System.Xml.XDocument.dll.so => 162
	i32 u0xe1ae15d6, ; 864: Xamarin.AndroidX.Collection => 215
	i32 u0xe1eea3e4, ; 865: lib_System.IO.Compression.ZipFile.dll.so => 45
	i32 u0xe1f0a5d8, ; 866: lib_Xamarin.AndroidX.ViewPager.dll.so => 274
	i32 u0xe2098b0b, ; 867: System.Collections.NonGeneric => 10
	i32 u0xe250cda6, ; 868: lib_Microsoft.Extensions.Logging.dll.so => 189
	i32 u0xe2513246, ; 869: lib_System.Runtime.Numerics.dll.so => 113
	i32 u0xe2a3f2e8, ; 870: System.Collections.Specialized.dll => 11
	i32 u0xe34ee011, ; 871: lib_System.IO.Pipelines.dll.so => 54
	i32 u0xe3774f52, ; 872: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i32 u0xe3a54a09, ; 873: System.Net.WebProxy => 81
	i32 u0xe3c7860c, ; 874: lib_System.Security.Claims.dll.so => 121
	i32 u0xe3df9d2b, ; 875: System.Security.Cryptography.dll => 129
	i32 u0xe4436460, ; 876: System.Numerics.dll => 86
	i32 u0xe4fab729, ; 877: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 183
	i32 u0xe52378b9, ; 878: System.Net.Mail.dll => 68
	i32 u0xe56ef253, ; 879: System.Runtime.InteropServices.dll => 110
	i32 u0xe625b819, ; 880: lib_Xamarin.AndroidX.CardView.dll.so => 214
	i32 u0xe6b14171, ; 881: System.Net.HttpListener.dll => 67
	i32 u0xe6ca3640, ; 882: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 217
	i32 u0xe6e179fa, ; 883: System.Security.Principal => 131
	i32 u0xe6e8f547, ; 884: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 185
	i32 u0xe6f98713, ; 885: System.Security.Cryptography.Encoding.dll => 125
	i32 u0xe797fcc1, ; 886: System.Net.WebHeaderCollection.dll => 80
	i32 u0xe79e77a6, ; 887: Xamarin.AndroidX.Transition.dll => 270
	i32 u0xe7c9e2bd, ; 888: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 258
	i32 u0xe7dc15ff, ; 889: zh-Hans/Microsoft.Maui.Controls.resources.dll => 324
	i32 u0xe839deed, ; 890: System.Collections.Concurrent.dll => 8
	i32 u0xe843daa0, ; 891: Xamarin.AndroidX.Core.dll => 222
	i32 u0xe89260c1, ; 892: Microsoft.VisualBasic.Core.dll => 2
	i32 u0xe90fdb70, ; 893: Xamarin.AndroidX.Collection.Jvm => 216
	i32 u0xe92ace5f, ; 894: lib_System.Linq.Parallel.dll.so => 61
	i32 u0xe97d0db9, ; 895: lib_System.IO.Hashing.dll.so => 176
	i32 u0xe99f7d24, ; 896: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 320
	i32 u0xe9b2d35e, ; 897: System.IO.Compression.FileSystem.dll => 44
	i32 u0xe9b630ed, ; 898: Xamarin.AndroidX.VersionedParcelable.dll => 273
	i32 u0xea0092d6, ; 899: lib_System.Threading.Tasks.Extensions.dll.so => 146
	i32 u0xea213423, ; 900: System.Xml.ReaderWriter => 160
	i32 u0xea4780ec, ; 901: System.Security.Principal.dll => 131
	i32 u0xea4fb52e, ; 902: Xamarin.AndroidX.Navigation.UI => 257
	i32 u0xeab81858, ; 903: lib_Microsoft.Maui.Essentials.dll.so => 198
	i32 u0xeaf244cc, ; 904: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i32 u0xeaf598f6, ; 905: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 190
	i32 u0xeb2ecede, ; 906: System.Data.DataSetExtensions.dll => 23
	i32 u0xeb5560c9, ; 907: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 109
	i32 u0xebac8bfe, ; 908: System.Text.Encoding.CodePages => 136
	i32 u0xebb0254b, ; 909: lib_System.Net.NetworkInformation.dll.so => 70
	i32 u0xebc66336, ; 910: Xamarin.AndroidX.AppCompat.dll => 209
	i32 u0xec05582d, ; 911: Xamarin.AndroidX.Lifecycle.Process => 241
	i32 u0xed1090ae, ; 912: lib_System.Net.Primitives.dll.so => 72
	i32 u0xed409aea, ; 913: th/Microsoft.Maui.Controls.resources.dll => 319
	i32 u0xed96d41f, ; 914: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 221
	i32 u0xedadd6e2, ; 915: he/Microsoft.Maui.Controls.resources.dll => 301
	i32 u0xedf6669b, ; 916: lib_System.Drawing.dll.so => 36
	i32 u0xee9f991d, ; 917: System.Diagnostics.Process.dll => 29
	i32 u0xeeefb9c8, ; 918: lib_System.Dynamic.Runtime.dll.so => 37
	i32 u0xef5e8475, ; 919: Xamarin.AndroidX.Annotation.Jvm.dll => 208
	i32 u0xefd01a89, ; 920: System.IO.Pipelines => 54
	i32 u0xeff49a63, ; 921: System.Memory => 64
	i32 u0xeff49c4a, ; 922: lib_System.Text.Encoding.Extensions.dll.so => 137
	i32 u0xf09122fc, ; 923: lib_System.IO.IsolatedStorage.dll.so => 52
	i32 u0xf121f953, ; 924: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 239
	i32 u0xf1304331, ; 925: Microsoft.Maui.Controls.Xaml.dll => 196
	i32 u0xf15cb56d, ; 926: Xamarin.KotlinX.Serialization.Core => 290
	i32 u0xf1676aaa, ; 927: lib-da-Microsoft.Maui.Controls.resources.dll.so => 295
	i32 u0xf1ad867b, ; 928: System.Reflection.Emit.ILGeneration => 93
	i32 u0xf27f60d1, ; 929: System.Private.Xml.Linq.dll => 90
	i32 u0xf29c5384, ; 930: id/Microsoft.Maui.Controls.resources => 305
	i32 u0xf2ce3c98, ; 931: System.Threading.dll => 152
	i32 u0xf2dd3fc4, ; 932: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 307
	i32 u0xf3201983, ; 933: Microsoft.Extensions.Hosting.Abstractions.dll => 187
	i32 u0xf323e0a6, ; 934: lib_Xamarin.Kotlin.StdLib.dll.so => 286
	i32 u0xf33c42ef, ; 935: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 272
	i32 u0xf3a16066, ; 936: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 246
	i32 u0xf40add04, ; 937: Microsoft.Maui.Essentials.dll => 198
	i32 u0xf42589bc, ; 938: lib_System.Security.Cryptography.X509Certificates.dll.so => 128
	i32 u0xf45985cf, ; 939: System.Drawing.dll => 36
	i32 u0xf462c30d, ; 940: System.Private.Uri => 89
	i32 u0xf479582c, ; 941: Xamarin.AndroidX.Emoji2 => 230
	i32 u0xf47b0a29, ; 942: lib_System.Configuration.dll.so => 19
	i32 u0xf48143e5, ; 943: pt/Microsoft.Maui.Controls.resources.dll => 314
	i32 u0xf5185c24, ; 944: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 314
	i32 u0xf53cb11d, ; 945: lib_System.Net.Security.dll.so => 75
	i32 u0xf554c79b, ; 946: lib_System.Linq.AsyncEnumerable.dll.so => 59
	i32 u0xf5861a4f, ; 947: pl/Microsoft.Maui.Controls.resources => 312
	i32 u0xf5e94e90, ; 948: ms/Microsoft.Maui.Controls.resources.dll => 309
	i32 u0xf5f4f1f0, ; 949: Microsoft.Extensions.DependencyInjection => 182
	i32 u0xf5fdf056, ; 950: lib_Microsoft.Extensions.DependencyInjection.dll.so => 182
	i32 u0xf60736e2, ; 951: System.IO.FileSystem.Watcher => 50
	i32 u0xf6318da0, ; 952: System.AppContext => 6
	i32 u0xf73be021, ; 953: System.Reflection.Emit.ILGeneration.dll => 93
	i32 u0xf76edc75, ; 954: System.Core => 21
	i32 u0xf7e95c85, ; 955: System.Xml.XmlSerializer => 166
	i32 u0xf807b767, ; 956: System.Reflection.TypeExtensions => 99
	i32 u0xf83dd773, ; 957: System.IO.FileSystem.Watcher.dll => 50
	i32 u0xf86129d4, ; 958: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 318
	i32 u0xf93ba7d4, ; 959: System.Runtime.Serialization.Primitives => 116
	i32 u0xf94a8f86, ; 960: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 249
	i32 u0xf97c5a99, ; 961: System.Security => 133
	i32 u0xfa21f6af, ; 962: System.Net.WebClient.dll => 79
	i32 u0xfa50891f, ; 963: lib_System.Linq.dll.so => 63
	i32 u0xfa6ae1e2, ; 964: lib_Xamarin.AndroidX.Annotation.dll.so => 206
	i32 u0xfac98279, ; 965: Xamarin.AndroidX.SavedState.SavedState.Android => 262
	i32 u0xfb0af295, ; 966: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 323
	i32 u0xfb1dad5d, ; 967: System.Diagnostics.DiagnosticSource.dll => 27
	i32 u0xfbc4b67c, ; 968: lib_System.IO.Compression.Brotli.dll.so => 43
	i32 u0xfc5f7d36, ; 969: pt/Microsoft.Maui.Controls.resources => 314
	i32 u0xfdac851c, ; 970: lib_grobowiec.dll.so => 0
	i32 u0xfdaee526, ; 971: Xamarin.AndroidX.Core.Core.Ktx => 223
	i32 u0xfdd1b433, ; 972: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 248
	i32 u0xfdf2741f, ; 973: System.Buffers => 7
	i32 u0xfe42d509, ; 974: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 264
	i32 u0xfea12dee, ; 975: Microsoft.Maui.Controls.dll => 195
	i32 u0xfecef6ea, ; 976: System.Runtime.Numerics => 113
	i32 u0xff6b9aa3, ; 977: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 262
	i32 u0xff912ee3, ; 978: lib_System.Xml.Serialization.dll.so => 161
	i32 u0xffd4917f, ; 979: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 249
	i32 u0xfffce3e8 ; 980: Xamarin.AndroidX.ExifInterface.dll => 232
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [981 x i32] [
	i32 70, i32 74, i32 69, i32 251, i32 166, i32 111, i32 183, i32 59,
	i32 242, i32 283, i32 48, i32 83, i32 321, i32 149, i32 197, i32 293,
	i32 30, i32 127, i32 199, i32 105, i32 10, i32 185, i32 265, i32 76,
	i32 62, i32 256, i32 323, i32 283, i32 68, i32 110, i32 253, i32 265,
	i32 143, i32 31, i32 80, i32 127, i32 13, i32 218, i32 215, i32 204,
	i32 135, i32 267, i32 268, i32 322, i32 279, i32 155, i32 163, i32 65,
	i32 312, i32 322, i32 77, i32 323, i32 18, i32 213, i32 142, i32 44,
	i32 26, i32 184, i32 191, i32 1, i32 224, i32 226, i32 61, i32 42,
	i32 142, i32 310, i32 94, i32 132, i32 200, i32 219, i32 151, i32 238,
	i32 235, i32 294, i32 23, i32 317, i32 55, i32 188, i32 71, i32 204,
	i32 86, i32 281, i32 119, i32 307, i32 236, i32 13, i32 306, i32 294,
	i32 134, i32 179, i32 112, i32 56, i32 153, i32 77, i32 149, i32 176,
	i32 64, i32 150, i32 260, i32 326, i32 169, i32 243, i32 125, i32 318,
	i32 220, i32 12, i32 233, i32 128, i32 156, i32 244, i32 174, i32 116,
	i32 170, i32 172, i32 168, i32 235, i32 89, i32 265, i32 118, i32 87,
	i32 305, i32 299, i32 194, i32 127, i32 6, i32 154, i32 302, i32 62,
	i32 189, i32 51, i32 106, i32 117, i32 40, i32 285, i32 280, i32 224,
	i32 123, i32 313, i32 178, i32 134, i32 11, i32 52, i32 21, i32 44,
	i32 78, i32 122, i32 243, i32 226, i32 231, i32 227, i32 96, i32 296,
	i32 84, i32 139, i32 273, i32 22, i32 211, i32 8, i32 51, i32 313,
	i32 75, i32 293, i32 159, i32 287, i32 225, i32 158, i32 167, i32 95,
	i32 284, i32 45, i32 308, i32 296, i32 112, i32 193, i32 133, i32 132,
	i32 25, i32 201, i32 165, i32 74, i32 56, i32 46, i32 100, i32 192,
	i32 92, i32 227, i32 22, i32 240, i32 149, i32 89, i32 43, i32 164,
	i32 73, i32 228, i32 292, i32 3, i32 42, i32 65, i32 176, i32 56,
	i32 282, i32 16, i32 58, i32 53, i32 154, i32 41, i32 320, i32 283,
	i32 14, i32 247, i32 231, i32 193, i32 108, i32 237, i32 278, i32 170,
	i32 281, i32 236, i32 34, i32 162, i32 287, i32 88, i32 32, i32 229,
	i32 12, i32 324, i32 145, i32 51, i32 298, i32 57, i32 261, i32 36,
	i32 183, i32 295, i32 282, i32 209, i32 35, i32 235, i32 60, i32 99,
	i32 185, i32 246, i32 12, i32 101, i32 194, i32 241, i32 178, i32 17,
	i32 286, i32 168, i32 187, i32 95, i32 139, i32 203, i32 244, i32 191,
	i32 319, i32 126, i32 17, i32 81, i32 85, i32 276, i32 66, i32 88,
	i32 76, i32 158, i32 157, i32 186, i32 272, i32 255, i32 299, i32 144,
	i32 103, i32 312, i32 211, i32 29, i32 52, i32 215, i32 151, i32 310,
	i32 187, i32 302, i32 216, i32 285, i32 5, i32 199, i32 291, i32 266,
	i32 288, i32 90, i32 271, i32 117, i32 217, i32 287, i32 208, i32 228,
	i32 258, i32 88, i32 253, i32 253, i32 276, i32 63, i32 115, i32 303,
	i32 293, i32 250, i32 58, i32 0, i32 261, i32 102, i32 177, i32 50,
	i32 19, i32 221, i32 250, i32 114, i32 104, i32 32, i32 3, i32 105,
	i32 86, i32 107, i32 281, i32 237, i32 73, i32 4, i32 247, i32 38,
	i32 32, i32 57, i32 106, i32 75, i32 9, i32 126, i32 46, i32 210,
	i32 194, i32 9, i32 43, i32 4, i32 263, i32 302, i32 35, i32 188,
	i32 297, i32 31, i32 213, i32 141, i32 95, i32 96, i32 317, i32 300,
	i32 269, i32 49, i32 145, i32 115, i32 291, i32 144, i32 2, i32 318,
	i32 16, i32 325, i32 118, i32 184, i32 282, i32 161, i32 79, i32 82,
	i32 39, i32 251, i32 37, i32 275, i32 212, i32 231, i32 225, i32 66,
	i32 141, i32 15, i32 46, i32 160, i32 169, i32 119, i32 289, i32 268,
	i32 279, i32 219, i32 48, i32 72, i32 83, i32 285, i32 129, i32 97,
	i32 124, i32 153, i32 26, i32 120, i32 240, i32 100, i32 28, i32 214,
	i32 105, i32 315, i32 153, i32 54, i32 173, i32 4, i32 101, i32 38,
	i32 325, i32 33, i32 80, i32 96, i32 267, i32 189, i32 108, i32 278,
	i32 21, i32 41, i32 209, i32 174, i32 106, i32 233, i32 152, i32 300,
	i32 186, i32 251, i32 310, i32 286, i32 279, i32 288, i32 257, i32 2,
	i32 304, i32 137, i32 114, i32 273, i32 190, i32 321, i32 201, i32 60,
	i32 98, i32 219, i32 39, i32 212, i32 324, i32 25, i32 97, i32 92,
	i32 102, i32 10, i32 210, i32 175, i32 90, i32 49, i32 64, i32 79,
	i32 103, i32 307, i32 264, i32 179, i32 47, i32 76, i32 203, i32 7,
	i32 303, i32 84, i32 246, i32 292, i32 207, i32 200, i32 301, i32 306,
	i32 91, i32 181, i32 239, i32 158, i32 326, i32 59, i32 234, i32 33,
	i32 115, i32 119, i32 67, i32 85, i32 138, i32 20, i32 11, i32 166,
	i32 136, i32 308, i32 3, i32 28, i32 308, i32 309, i32 280, i32 197,
	i32 114, i32 315, i32 102, i32 27, i32 15, i32 192, i32 7, i32 190,
	i32 87, i32 60, i32 73, i32 188, i32 30, i32 289, i32 66, i32 272,
	i32 147, i32 83, i32 316, i32 161, i32 277, i32 41, i32 248, i32 195,
	i32 120, i32 180, i32 202, i32 300, i32 306, i32 259, i32 311, i32 171,
	i32 319, i32 243, i32 277, i32 134, i32 78, i32 68, i32 177, i32 206,
	i32 147, i32 0, i32 109, i32 155, i32 299, i32 20, i32 72, i32 238,
	i32 160, i32 320, i32 179, i32 148, i32 124, i32 254, i32 292, i32 130,
	i32 278, i32 156, i32 230, i32 157, i32 91, i32 277, i32 145, i32 311,
	i32 217, i32 98, i32 233, i32 20, i32 14, i32 266, i32 138, i32 78,
	i32 61, i32 220, i32 171, i32 240, i32 172, i32 195, i32 15, i32 77,
	i32 140, i32 242, i32 6, i32 305, i32 205, i32 23, i32 242, i32 261,
	i32 317, i32 200, i32 196, i32 94, i32 1, i32 139, i32 245, i32 244,
	i32 271, i32 137, i32 71, i32 150, i32 186, i32 116, i32 289, i32 25,
	i32 234, i32 191, i32 91, i32 99, i32 225, i32 229, i32 257, i32 31,
	i32 45, i32 147, i32 238, i32 249, i32 202, i32 112, i32 162, i32 35,
	i32 288, i32 110, i32 22, i32 117, i32 58, i32 141, i32 268, i32 148,
	i32 121, i32 123, i32 222, i32 113, i32 298, i32 204, i32 143, i32 210,
	i32 55, i32 82, i32 108, i32 250, i32 196, i32 8, i32 197, i32 123,
	i32 136, i32 247, i32 284, i32 276, i32 155, i32 274, i32 260, i32 237,
	i32 9, i32 201, i32 48, i32 234, i32 69, i32 269, i32 199, i32 321,
	i32 163, i32 298, i32 255, i32 221, i32 5, i32 167, i32 129, i32 135,
	i32 260, i32 165, i32 311, i32 269, i32 248, i32 144, i32 274, i32 42,
	i32 270, i32 297, i32 173, i32 198, i32 205, i32 280, i32 40, i32 291,
	i32 316, i32 232, i32 84, i32 57, i32 37, i32 130, i32 100, i32 142,
	i32 170, i32 177, i32 290, i32 275, i32 85, i32 207, i32 192, i32 101,
	i32 26, i32 30, i32 163, i32 263, i32 18, i32 130, i32 193, i32 256,
	i32 122, i32 228, i32 159, i32 245, i32 264, i32 294, i32 202, i32 71,
	i32 241, i32 266, i32 184, i32 169, i32 326, i32 107, i32 263, i32 252,
	i32 173, i32 174, i32 16, i32 275, i32 271, i32 148, i32 304, i32 40,
	i32 128, i32 121, i32 38, i32 118, i32 47, i32 146, i32 87, i32 120,
	i32 34, i32 178, i32 98, i32 53, i32 216, i32 97, i32 252, i32 181,
	i32 254, i32 131, i32 104, i32 132, i32 157, i32 24, i32 165, i32 152,
	i32 107, i32 236, i32 224, i32 92, i32 220, i32 262, i32 214, i32 62,
	i32 146, i32 93, i32 103, i32 5, i32 13, i32 124, i32 125, i32 122,
	i32 138, i32 28, i32 180, i32 74, i32 226, i32 24, i32 24, i32 212,
	i32 258, i32 255, i32 270, i32 223, i32 18, i32 140, i32 205, i32 222,
	i32 172, i32 33, i32 256, i32 259, i32 104, i32 126, i32 227, i32 94,
	i32 181, i32 182, i32 167, i32 171, i32 229, i32 39, i32 230, i32 29,
	i32 303, i32 17, i32 175, i32 316, i32 267, i32 140, i32 154, i32 218,
	i32 159, i32 133, i32 19, i32 67, i32 284, i32 322, i32 168, i32 111,
	i32 151, i32 1, i32 211, i32 232, i32 47, i32 164, i32 315, i32 296,
	i32 203, i32 82, i32 63, i32 295, i32 109, i32 143, i32 207, i32 259,
	i32 49, i32 239, i32 290, i32 254, i32 14, i32 313, i32 297, i32 180,
	i32 70, i32 301, i32 208, i32 175, i32 213, i32 218, i32 309, i32 156,
	i32 325, i32 81, i32 223, i32 111, i32 206, i32 252, i32 69, i32 65,
	i32 135, i32 27, i32 164, i32 34, i32 245, i32 150, i32 304, i32 162,
	i32 215, i32 45, i32 274, i32 10, i32 189, i32 113, i32 11, i32 54,
	i32 53, i32 81, i32 121, i32 129, i32 86, i32 183, i32 68, i32 110,
	i32 214, i32 67, i32 217, i32 131, i32 185, i32 125, i32 80, i32 270,
	i32 258, i32 324, i32 8, i32 222, i32 2, i32 216, i32 61, i32 176,
	i32 320, i32 44, i32 273, i32 146, i32 160, i32 131, i32 257, i32 198,
	i32 55, i32 190, i32 23, i32 109, i32 136, i32 70, i32 209, i32 241,
	i32 72, i32 319, i32 221, i32 301, i32 36, i32 29, i32 37, i32 208,
	i32 54, i32 64, i32 137, i32 52, i32 239, i32 196, i32 290, i32 295,
	i32 93, i32 90, i32 305, i32 152, i32 307, i32 187, i32 286, i32 272,
	i32 246, i32 198, i32 128, i32 36, i32 89, i32 230, i32 19, i32 314,
	i32 314, i32 75, i32 59, i32 312, i32 309, i32 182, i32 182, i32 50,
	i32 6, i32 93, i32 21, i32 166, i32 99, i32 50, i32 318, i32 116,
	i32 249, i32 133, i32 79, i32 63, i32 206, i32 262, i32 323, i32 27,
	i32 43, i32 314, i32 0, i32 223, i32 248, i32 7, i32 264, i32 195,
	i32 113, i32 262, i32 161, i32 249, i32 232
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.mm.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.mm.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ d549e1dc4e2a083b08b4f24cb5495e81b99d79b5"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
