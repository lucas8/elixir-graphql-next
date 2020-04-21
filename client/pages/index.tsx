import React from 'react'
import { withApollo } from '../lib/apollo'

const Index = () => <div>hello world</div>

export default withApollo()(Index)
