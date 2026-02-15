using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ContentFilter
{
    /// <summary>
    /// Query options for the Content Filter API
    /// </summary>
    public class ContentFilterQueryOptions
    {
        /// <summary>
        /// The URL or domain to check
        /// </summary>
        [JsonProperty("url")]
        public string Url { get; set; }
    }
}
