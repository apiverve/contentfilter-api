declare module '@apiverve/contentfilter' {
  export interface contentfilterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface contentfilterResponse {
    status: string;
    error: string | null;
    data: ContentFilterData;
    code?: number;
  }


  interface ContentFilterData {
      url:           string;
      domain:        string;
      isBlocked:     boolean;
      category:      string;
      matchedDomain: string;
      safetyRating:  string;
  }

  export default class contentfilterWrapper {
    constructor(options: contentfilterOptions);

    execute(callback: (error: any, data: contentfilterResponse | null) => void): Promise<contentfilterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: contentfilterResponse | null) => void): Promise<contentfilterResponse>;
    execute(query?: Record<string, any>): Promise<contentfilterResponse>;
  }
}
