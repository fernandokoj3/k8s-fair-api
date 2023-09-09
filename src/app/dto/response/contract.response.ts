import { Expose } from 'class-transformer';

export class ContractCreateResponse {
  address: string;

  data: string;

  gas: number;

  from: string;

  @Expose({ name: 'gasPrice' })
  gas_price: string;

  @Expose({ name: 'etherScan' })
  ether_scan: string;

  name: string;

  symbol: string;

  supply: string;
}

export class ContractMetaResponse {
  name: string;

  symbol: string;

  @Expose({ name: 'totalSupply' })
  total_supply: string;

  @Expose({ name: 'jsonInterface' })
  json_interface: any;

  decimals: string;

  balance: string;
}
